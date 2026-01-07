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

README_FILE="README.md"
MODELS_DIR="models"
HEADER_FILE="README_HEADER.md"

# Start fresh README
> "$README_FILE"

# If a README_HEADER.md is present, prepend it. Otherwise, write default header (previous behavior).
if [ -f "$HEADER_FILE" ]; then
    cat "$HEADER_FILE" >> "$README_FILE"
else
    cat <<EOF >> "$README_FILE"
<p align="center">
  <img width="100%" src="https://github.com/UsiFX/csharp_models_solution/blob/main/banner/csharp_solutions.png">
</p>

# 📘 C# Programming Models Solution

<img src="https://img.shields.io/badge/Language-C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white"> <img src="https://img.shields.io/badge/License-GPLv3-blue.svg?style=for-the-badge">

A structured collection of C# programming models, organized by topic and executed dynamically using reflection.

---

## Table of contents

- [Getting Started](#getting-started)
- [Project layout](#project-layout)
- [Quick run (Make + dotnet)](#quick-run-make--dotnet)
- [How the runner works](#how-the-runner-works)
- [Create / regenerate models](#create--regenerate-models)
- [Models (organized by topic)](#models-organized-by-topic)
- [Contributing & notes](#contributing--notes)
- [License](#license)

---

## Getting Started

### Prerequisites

This project requires:
- **.NET SDK 6.0 or later** — for running C# code
- **Make** (optional) — for convenient command shortcuts

### Installation by Platform

#### **Ubuntu / Debian**

\`\`\`bash
sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0

# Install Make
sudo apt-get install -y make

# Verify installation
dotnet --version
make --version
\`\`\`

#### **Fedora / RHEL / CentOS**

\`\`\`bash
# Install .NET SDK
sudo dnf install -y dotnet-sdk-8.0

# Install Make
sudo dnf install -y make

# Verify installation
dotnet --version
make --version
\`\`\`

#### **Windows**

**Option 1: Using winget (Windows 10 1809+/Windows 11)**
\`\`\`powershell
# Install .NET SDK
winget install Microsoft.DotNet.SDK.8

# Install Make (via Chocolatey - install Chocolatey first from https://chocolatey.org)
choco install make

# Verify installation
dotnet --version
make --version
\`\`\`

**Option 2: Manual installation**
1. Download and install [.NET SDK 8.0](https://dotnet.microsoft.com/download/dotnet/8.0)
2. Download [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm) or use Windows Subsystem for Linux (WSL)
3. Add installation directories to your PATH
4. Verify in Command Prompt or PowerShell:
   \`\`\`
   dotnet --version
   make --version
   \`\`\`

#### **macOS**

\`\`\`bash
# Install .NET SDK
brew install dotnet-sdk

# Make is pre-installed on macOS, but you can update it with:
brew install make

# Verify installation
dotnet --version
make --version
\`\`\`

### Quick Setup

Once prerequisites are installed:

\`\`\`bash
# Clone the repository
git clone https://github.com/UsiFX/csharp_models_solution.git
cd csharp_models_solution

# Run a model (example: arrays-1d, model a7)
make run topic=arrays-1d model=a7

# Or without Make:
dotnet run -- arrays-1d a7
\`\`\`

---

## Project layout

Top-level overview:
- \`Program.cs\` — app entry; reflection-based runner that invokes a model's \`Run()\` method.
- \`Makefile\` — convenience wrappers: \`make run\`, \`make new\`, \`make readme\`.
- \`models/\` — folders by topic (e.g., \`arrays-1d\`, \`arrays-2d\`, \`patterns\`) containing model subfolders \`model-a1\`, \`model-b2\`, etc.
EOF
fi

# Function to extract description from model README
extract_description() {
    local readme_file="$1"
    if [ -f "$readme_file" ]; then
        # Try to get the problem description (first non-empty line after "## Problem" or similar)
        local desc=$(grep -A 1 "^## Problem" "$readme_file" | tail -1 | sed 's/^[[:space:]]*//')
        if [ -n "$desc" ] && [ "$desc" != "## Problem" ]; then
            echo "$desc"
            return
        fi
        # If no problem section, try to get first meaningful line from README
        local desc=$(grep -v "^#" "$readme_file" | grep -v "^$" | head -1 | sed 's/^[[:space:]]*//')
        if [ -n "$desc" ]; then
            echo "$desc"
            return
        fi
    fi
    echo ""
}

# Define expected models with descriptions
# Format: "MODEL_ID|Description"
declare -A ARRAYS_1D_MODELS
ARRAYS_1D_MODELS=(
    ["A3"]="Modify elements in a value range and compute their sum."
    ["A4"]="Copy array with a special-case element (second element copied unchanged)."
    ["A6"]="Multiply each element by its index and print result."
    ["A7"]="Read 6 integers, swap first and last, print result."
    ["A8"]="Replace negative elements with absolute values."
    ["A9"]="Print elements located at even indices from a 10-element array."
    ["B1"]="Conditional +/- 3 depending on threshold."
    ["B2"]="Element-wise sum of two 3-element arrays, multiplied by 3."
    ["B3"]="Print sqrt for numbers divisible by 3 but not 2."
    ["B4"]="(Model not yet implemented)"
    ["B5"]="Element-wise sum of two arrays (length 3)."
    ["B6"]="Print sqrt for numbers divisible by 3."
    ["B7"]="Count occurrences of a number X in an 8-element array."
    ["B8"]="Second largest distinct element in a 7-element array."
    ["C1"]="Print elements that appear more than once (duplicate detection)."
    ["C2"]="Print numbers within [25,75] from a larger array."
    ["C3"]="Print elements strictly greater than the average (n ≤ 10)."
    ["C4"]="Count of even and odd elements (8 integers)."
    ["C5"]="Copy elements at odd indices into a new array."
    ["C6"]="Count increases vs previous element in an 8-element array."
    ["C7"]="Print numbers between 10 and 50 inclusive."
    ["C8"]="Sum of even numbers in given array."
    ["C9"]="Difference between sums of even and odd elements."
    ["D1"]="Print reversed elements greater than 20."
    ["D2"]="Index of first maximum in an array (n ≤ 12)."
    ["D4"]="Reverse array in-place (6 integers)."
    ["D5"]="Sum of elements at even indices vs odd indices."
    ["D6"]="Print elements divisible by 6."
    ["D7"]="Print array then elements greater than 15."
    ["D8"]="Average rounded to nearest integer (10 integers)."
    ["D9"]="Print maximum and minimum from 9 integers."
)

declare -A ARRAYS_2D_MODELS
ARRAYS_2D_MODELS=(
    ["A2"]="2×3 filter by ( >25 & even ) OR ( <25 & divisible by 3 )."
    ["A5"]="Find max and min in the 2×3 array."
    ["B9"]="Sum columns from two rows (2×3)."
)

declare -A PATTERNS_MODELS
PATTERNS_MODELS=(
    ["A1"]="Print descending triangular numbers pattern."
    ["D3"]="Print triangular increasing numbers pattern."
)

echo "" >> "$README_FILE"
echo "---" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "## Quick run (Make + dotnet)" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "Two common ways to run models:" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "1) Using Make (convenience; Makefile calls dotnet):" >> "$README_FILE"
echo "- Run a model:" >> "$README_FILE"
echo "  - \`make run topic=<category> model=<model>\`" >> "$README_FILE"
echo "  - Example:" >> "$README_FILE"
echo "    - \`make run topic=arrays-1d model=a7\`" >> "$README_FILE"
echo "  - This executes \`dotnet run -- <category> <model>\` under the hood." >> "$README_FILE"
echo "" >> "$README_FILE"
echo "2) Direct dotnet run (no Make required):" >> "$README_FILE"
echo "- From repo root (single multi-model project):" >> "$README_FILE"
echo "  - \`dotnet run -- arrays-1d a7\`" >> "$README_FILE"
echo "  - Program receives \`args[0] = \"arrays-1d\"\`, \`args[1] = \"a7\"\`" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "Notes:" >> "$README_FILE"
echo "- \`--\` separates dotnet CLI options from application arguments. All tokens after \`--\` are forwarded to your \`Main(string[] args)\`." >> "$README_FILE"
echo "" >> "$README_FILE"
echo "---" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "## How the runner works" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "- \`Program.cs\` expects exactly two arguments: \`<category>\` and \`<model>\`." >> "$README_FILE"
echo "- It normalizes the category (e.g., \`arrays-1d\` → \`arrays1d\`), then searches the assembly for a type named \`Model<model>\` within a namespace that ends with the normalized category." >> "$README_FILE"
echo "- It invokes that type's public static \`Run()\` method using reflection." >> "$README_FILE"
echo "- This design allows each model to be implemented as a static class \`ModelA7\` (for example) in the appropriate namespace." >> "$README_FILE"
echo "" >> "$README_FILE"
echo "If \`make run\` or \`dotnet run -- <category> <model>\` prints \`[!] Model ... not found\`, ensure the model's \`solution.cs\` exists, the namespace matches the category folder, and the class provides a public static \`Run()\` method." >> "$README_FILE"
echo "" >> "$README_FILE"
echo "---" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "## Create / regenerate models" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "- Create a new model scaffold:" >> "$README_FILE"
echo "  - \`make new topic=<category> model=<model>\`" >> "$README_FILE"
echo "  - Example: \`make new topic=arrays-1d model=b6\`" >> "$README_FILE"
echo "  - Internally this runs \`new_model.sh\` which creates \`models/<topic>/model-<model>/solution.cs\` with a template." >> "$README_FILE"
echo "" >> "$README_FILE"
echo "- Regenerate README from \`models/\`:" >> "$README_FILE"
echo "  - \`make readme\`" >> "$README_FILE"
echo "  - This runs \`generate_readme.sh\` which will overwrite \`README.md\`. If you've made manual edits, either update the generator or avoid running this target." >> "$README_FILE"
echo "" >> "$README_FILE"
echo "---" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "## Models (organized by topic)" >> "$README_FILE"
echo "" >> "$README_FILE"
echo "Each model folder typically includes a per-model README with a problem statement, input/output expectations, and how to run that particular model. Below is a compact, organized map (with short descriptions) to help you find and run models quickly." >> "$README_FILE"
echo "" >> "$README_FILE"
echo "Note: model IDs correspond to folder names \`models/<topic>/model-<id>/\`. Use \`make run topic=<topic> model=<id>\` or \`dotnet run -- <topic> <id>\` to execute." >> "$README_FILE"
echo "" >> "$README_FILE"

# Arrays 1D
echo "Arrays 1D (\`models/arrays-1d/\`)" >> "$README_FILE"
for model_id in $(echo "${!ARRAYS_1D_MODELS[@]}" | tr ' ' '\n' | sort); do
    model_path="models/arrays-1d/model-${model_id,,}"
    desc="${ARRAYS_1D_MODELS[$model_id]}"
    
    # Check if model exists and has solution
    if [ -d "$model_path" ] && [ -f "$model_path/solution.cs" ]; then
        # Try to extract description from README if exists
        extracted_desc=$(extract_description "$model_path/README.md")
        if [ -n "$extracted_desc" ]; then
            desc="$extracted_desc"
        fi
        echo "- [$model_id]($model_path/README.md) — $desc" >> "$README_FILE"
    else
        # Model not solved yet
        echo "- $model_id — $desc **(Unsolved)**" >> "$README_FILE"
    fi
done
echo "" >> "$README_FILE"

# Arrays 2D
echo "Arrays 2D (\`models/arrays-2d/\`)" >> "$README_FILE"
for model_id in $(echo "${!ARRAYS_2D_MODELS[@]}" | tr ' ' '\n' | sort); do
    model_path="models/arrays-2d/model-${model_id,,}"
    desc="${ARRAYS_2D_MODELS[$model_id]}"
    
    if [ -d "$model_path" ] && [ -f "$model_path/solution.cs" ]; then
        extracted_desc=$(extract_description "$model_path/README.md")
        if [ -n "$extracted_desc" ]; then
            desc="$extracted_desc"
        fi
        echo "- [$model_id]($model_path/README.md) — $desc" >> "$README_FILE"
    else
        echo "- $model_id — $desc **(Unsolved)**" >> "$README_FILE"
    fi
done
echo "" >> "$README_FILE"

# Patterns
echo "Patterns (\`models/patterns/\`)" >> "$README_FILE"
for model_id in $(echo "${!PATTERNS_MODELS[@]}" | tr ' ' '\n' | sort); do
    model_path="models/patterns/model-${model_id,,}"
    desc="${PATTERNS_MODELS[$model_id]}"
    
    if [ -d "$model_path" ] && [ -f "$model_path/solution.cs" ]; then
        extracted_desc=$(extract_description "$model_path/README.md")
        if [ -n "$extracted_desc" ]; then
            desc="$extracted_desc"
        fi
        echo "- [$model_id]($model_path/README.md) — $desc" >> "$README_FILE"
    else
        echo "- $model_id — $desc **(Unsolved)**" >> "$README_FILE"
    fi
done
echo "" >> "$README_FILE"

cat <<EOF >> "$README_FILE"
---

## Contributing & notes

- If you edit this README by hand, avoid running \`make readme\` because \`generate_readme.sh\` will overwrite it.
- If you want to keep a custom header (banner or text), update \`generate_readme.sh\` to preserve or read a header template.
- When creating new models via \`make new\`, fill the generated \`solution.cs\` and add a short \`README.md\` describing Input/Output and any sample I/O.
- For automated testing, prefer programs that read from stdin (no interactive prompts) and print precise outputs.

---

## License

This project is licensed under the GNU General Public License v3.0 — see the [LICENSE](LICENSE) file for details.

EOF

echo "[*] README rebuilt successfully."
