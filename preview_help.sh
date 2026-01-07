#!/bin/bash
#
# Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License
#
# This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
# POSIX shell script to preview sections from a topic/model README.
# Enhancements:
# - Extracts additional headings: Short Description, Sample Input, Sample Output
# - Supports compact/short preview via --short
# - Supports printing a single section via --section "<Heading>"
#
# Usage:
#   ./scripts/preview_help.sh                   # list topics
#   ./scripts/preview_help.sh <topic>           # show topic README or list models
#   ./scripts/preview_help.sh <topic> <model>   # show Problem/Input/Output/Logic/How to Run/etc.
#   ./scripts/preview_help.sh <topic> <model> --short
#   ./scripts/preview_help.sh <topic> <model> --section "Logic"
#


# Extract a markdown "## Heading" section (content until next "## " or EOF)
extract_section() {
  file="$1"
  heading="$2"
  awk -v h="## ${heading}" '
    $0 ~ h { show=1; next }
    show && /^## / { exit }
    show { print }
  ' "$file"
}

# Print a single heading if present (with heading label)
print_if_section() {
    file="$1"
    heading="$2"
    if extract_section "$file" "$heading" | grep -q . 2>/dev/null; then
        echo "## $heading"
        extract_section "$file" "$heading"
        echo
    fi
}

# List topics (directories under models/)
list_topics() {
    echo "Available topics:"
    for d in models/*; do
        [ -d "$d" ] || continue
        echo " - $(basename "$d")"
    done
}

# List models in a topic (model-*)
list_models_in_topic() {
  topic="$1"
  dir="models/$topic"
    if [ ! -d "$dir" ]; then
        echo "Topic not found: $topic" >&2
        exit 1
    fi
    echo "Models in topic '$topic':"
    for d in "$dir"/model-*; do
        [ -d "$d" ] || continue
        echo " - $(basename "$d" | sed 's/^model-//')"
    done
}

show_file() {
  file="$1"
    if [ -f "$file" ]; then
        echo "=== Showing: $file ==="
        cat "$file"
        echo
        exit 0
    fi
}

# CLI flags parsing (very small)
section_flag=""
short_flag=0
# collect positional args
pos_args=""
for a in "$@"; do
    case "$a" in
    --short|-s)
        short_flag=1
    ;;
    --section)
        # next argument is the section name
    ;;
    --section=*)
        section_flag="$(printf "%s" "$a" | sed 's/^--section=//')"
    ;;
    *)
        pos_args="$pos_args \"$a\""
    ;;
    esac
done

# If --section without = was used we need to parse it properly (fallback)
i=1
argc=$#
prev=""
while [ $i -le $argc ]; do
    eval cur=\$$i
    if [ "$prev" = "--section" ]; then
        section_flag="$cur"
    fi
    prev="$cur"
    i=$((i + 1))
done

# Build positional parameters (topic, model)
topic=""
model=""
for a in "$@"; do
    case "$a" in
        --short|-s) continue ;;
        --section* )
            if [ "$a" = "--section" ]; then
            shift >/dev/null 2>&1 || true
            fi
            continue
        ;;
    *)
        if [ -z "$topic" ]; then
        topic="$a"
        elif [ -z "$model" ]; then
        model="$a"
        fi
    ;;
    esac
done

# Fallback: if no topic, list topics
if [ -z "$topic" ]; then
    list_topics
    exit 0
fi

topic_readme="models/${topic}/README.md"
model_readme="models/${topic}/model-${model}/README.md"

# If only topic provided: show topic README or list models
if [ -z "$model" ]; then
    if [ -f "$topic_readme" ]; then
        show_file "$topic_readme"
    elif [ -d "models/${topic}" ]; then
        list_models_in_topic "$topic"
    else
        echo "Topic not found: ${topic}" >&2
        exit 1
    fi
    exit 0
fi

# If model provided but no README: show any README-like files in model dir, else error
if [ ! -f "$model_readme" ]; then
    if [ -d "models/${topic}/model-${model}" ]; then
    for f in models/${topic}/model-${model}/README*; do
        [ -f "$f" ] || continue
        show_file "$f"
    done
        echo "No README found for model '${model}' in topic '${topic}'." >&2
        exit 1
    else
        echo "Model not found: ${model} in topic ${topic}" >&2
        exit 1
    fi
fi

# If a single section requested, print that and exit
if [ -n "$section_flag" ]; then
    print_if_section "$model_readme" "$section_flag"
    exit 0
fi

# Default: print main sections. If --short requested, print a compact view.
# NOTE: For --short we still print the FULL "Logic" section (never shorten it).
if [ "$short_flag" -eq 1 ]; then
    # Try Short Description, else first non-empty line of Problem
    sd="$(extract_section "$model_readme" "Short Description" | sed -n '1p' | sed 's/^[[:space:]]*//')"
    if [ -n "$sd" ]; then
        echo "$sd"
    else
    first_problem_line="$(extract_section "$model_readme" "Problem" | sed -n '1p' | sed 's/^[[:space:]]*//')"
    [ -n "$first_problem_line" ] && echo "$first_problem_line"
    fi

    # Show tiny summary: Input -> Output (one-liners)
    inp="$(extract_section "$model_readme" "Input" | sed -n '1p' | sed 's/^[[:space:]]*//')"
    out="$(extract_section "$model_readme" "Output" | sed -n '1p' | sed 's/^[[:space:]]*//')"
    if [ -n "$inp" ] || [ -n "$out" ]; then
        echo
        [ -n "$inp" ] && printf "Input: %s\n" "$inp"
        [ -n "$out" ] && printf "Output: %s\n" "$out"
    fi

    # Print the FULL Logic section (never shortened)
    logic_full="$(extract_section "$model_readme" "Logic")"
    if [ -n "$logic_full" ]; then
        echo
        echo "## Logic"
        printf "%s\n" "$logic_full"
    fi

    # Show How to Run (first line)
    run_first="$(extract_section "$model_readme" "How to Run" | sed -n '1p' | sed 's/^[[:space:]]*//')"
    if [ -n "$run_first" ]; then
        echo
        printf "Run: %s\n" "$run_first"
    fi

    exit 0
fi

# Full preview: print Problem, Input, Output, Sample Input, Sample Output, Logic, How to Run (if present)
echo "Topic: $topic    Model: $model"
echo
print_if_section "$model_readme" "Short Description"
print_if_section "$model_readme" "Problem"
print_if_section "$model_readme" "Input"
print_if_section "$model_readme" "Output"
print_if_section "$model_readme" "Sample Input"
print_if_section "$model_readme" "Sample Output"
print_if_section "$model_readme" "Logic"
print_if_section "$model_readme" "How to Run"
exit 0