#!/bin/bash
# Usage: ./scripts/new_model.sh <category> <model_name>
# Example: ./scripts/new_model.sh arrays-1d a7

set -e

CATEGORY_RAW="$1"
MODEL_RAW="$2"

if [[ -z "$CATEGORY_RAW" || -z "$MODEL_RAW" ]]; then
	echo "Usage: $0 <category> <model_name>"
	echo "Example: $0 arrays-1d a7"
	exit 1
fi


# Directory (lowercase)
CATEGORY_DIR=$(echo "$CATEGORY_RAW" | tr '[:upper:]' '[:lower:]')

# Namespace (remove symbols + PascalCase)
CATEGORY_NS=$(echo "$CATEGORY_RAW" | sed 's/[^a-zA-Z0-9]//g' | awk '{print toupper(substr($0,1,1)) substr($0,2)}')

# Model Class (capitalize first letter)
MODEL_CLASS=$(echo "$MODEL_RAW" | awk '{print toupper(substr($0,1,1)) substr($0,2)}')

BASE_DIR="models"
TARGET_DIR="$BASE_DIR/$CATEGORY_DIR/model-${MODEL_RAW,,}"
FULL_PATH="$TARGET_DIR/solution.cs"

mkdir -p "$TARGET_DIR"

if [[ -f "$FULL_PATH" ]]; then
	echo "[!] Model already exists: $FULL_PATH"
	exit 1
fi

# Make CSharp file

cat <<EOF > "$FULL_PATH"
using System;

namespace Models.$CATEGORY_NS
{
	public static class Model$MODEL_CLASS
	{
		public static void Run()
		{
			Console.WriteLine("--- Running Model $MODEL_CLASS ($CATEGORY_RAW) ---");

			// TODO: Implement solution logic here

			Console.ReadKey();
		}
	}
}
EOF

echo "[*] Created model:"
echo "    Category  : $CATEGORY_RAW"
echo "    Namespace : Models.$CATEGORY_NS"
echo "    Class     : Model$MODEL_CLASS"
echo "    Path      : $FULL_PATH"
