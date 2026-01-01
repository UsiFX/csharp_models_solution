#!/usr/bin/env bash

set -e

BASE_DIR="models"
README="README.md"

# Topic display names
declare -A TOPIC_TITLES=(
	["arrays-1d"]="📦 Arrays (1D)"
	["arrays-2d"]="📦 Arrays (2D)"
	["patterns"]="🎨 Patterns"
)

echo "# 📘 Programming Models – C# Solutions" > "$README"
echo "" >> "$README"
echo "Well-structured solutions for C# practical programming models." >> "$README"
echo "Problems are organized by topic and model number." >> "$README"
echo "" >> "$README"
echo "---" >> "$README"
echo "## 📂 Topics Overview" >> "$README"

for topic in $(ls -d "$BASE_DIR"/* | sort); do
	[ -d "$topic" ] || continue
	topic_key=$(basename "$topic")
	topic_title=${TOPIC_TITLES[$topic_key]:-$topic_key}

	echo "" >> "$README"
	echo "### $topic_title" >> "$README"

	found_any=false

	for model in $(ls -d "$topic"/* 2>/dev/null | sort); do
		[ -d "$model" ] || continue
		model_name=$(basename "$model")
		pretty_name=$(echo "$model_name" | sed 's/model-/Model /' | tr 'a-z' 'A-Z')

		if [ -f "$model/solution.cs" ]; then
			echo "- ✅ [$pretty_name]($BASE_DIR/$topic_key/$model_name)" >> "$README"
		else
			echo "- ⏳ $pretty_name" >> "$README"
		fi

		found_any=true
	done

	if [ "$found_any" = false ]; then
		echo "- _(No models yet)_" >> "$README"
	fi
done

echo "" >> "$README"
echo "---" >> "$README"
echo "## ⚙️ Automation" >> "$README"
echo "This README is auto-generated using \`generate_readme.sh\`." >> "$README"
echo "" >> "$README"
echo "**Do not edit manually.**" >> "$README"
