#!/usr/bin/env bash

if [ "$#" -ne 3 ]; then
	echo "Usage: $0 <topic> <model-name> <title>"
	exit 1
fi

TOPIC=$1
MODEL=$2
TITLE=$3

DIR="models/$TOPIC/$MODEL"

mkdir -p "$DIR"

cat > "$DIR/problem.md" <<EOF
# $TITLE

## Problem
(Write the problem statement here)
EOF

cat > "$DIR/solution.cs" <<EOF
using System;

class Program
{
	static void Main()
	{
		// TODO: Implement solution
	}
}
EOF

echo "[*] Model created at $DIR"
