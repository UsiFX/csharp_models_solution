#!/bin/bash
# Usage: ./scripts/new_model.sh <category> <model_name>
# Example: ./scripts/new_model.sh arrays-1d a7

CATEGORY=$1
MODEL_NAME=$2

# Input Validation
if [[ -z "$CATEGORY" || -z "$MODEL_NAME" ]]; then
	echo "Usage: $0 <category> <model_name>"
	echo "Example: $0 arrays-1d a7"
	exit 1
fi

# Configuration
BASE_DIR="models"
TARGET_DIR="$BASE_DIR/$CATEGORY"
FULL_PATH="$TARGET_DIR/solution.cs"

# Create Directory if missing
if [ ! -d "$TARGET_DIR" ]; then
	mkdir -p "$TARGET_DIR"
	echo "[*] Created directory: $TARGET_DIR"
fi

# Check if file exists
if [ -f "$FULL_PATH" ]; then
	echo "[!] File $FULL_PATH already exists!"
	exit 1
fi

# Generate C# Template
cat <<EOF > "$FULL_PATH"
using System;

namespace Models.$CATEGORY
{
	public class Model${MODEL_NAME}
	{
		public static void Run()
		{
			Console.WriteLine("--- Running Model ${MODEL_NAME} ($CATEGORY) ---");

			// TODO: Implement solution logic here
			// Example:
			// int[] numbers = { 1, 2, 3, 4, 5 };
			// foreach(var n in numbers) Console.Write(n + " ");

			Console.ReadKey();
		}
	}
}
EOF

echo "[*] Created C# Model: $FULL_PATH"
