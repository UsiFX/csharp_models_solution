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

cat <<EOF > "$README_FILE"
<p align="center">
  <img width="100%" src="https://github.com/UsiFX/csharp_models_solution/blob/main/banner/csharp_solutions.png"/>
</p>

# 📘 C# Programming Models Solution

![Language](https://img.shields.io/badge/Language-C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white)
![License](https://img.shields.io/badge/License-GPLv3-blue.svg?style=for-the-badge)

A structured collection of C# programming models, organized by topic and executed dynamically using reflection.
---

## Table of Contents

- [Project Progress](#-project-progress)
- [Prerequisites & Setup](#%EF%B8%8F-prerequisites--setup)
- [Running Models](#%EF%B8%8F-running-models)
- [Quick Start](#-quick-start)
- [License](#%EF%B8%8F-license)

## 📂 Project Progress

EOF

# Categories
find "$MODELS_DIR" -maxdepth 1 -mindepth 1 -type d | sort | while read -r category_path; do
    CATEGORY_RAW=$(basename "$category_path")

    # Pretty display: arrays-1d → Arrays 1D
    CATEGORY_DISPLAY=$(echo "$CATEGORY_RAW" | sed 's/-/ /g; s/\b\(.\)/\u\1/g')

    echo "### 📦 $CATEGORY_DISPLAY" >> "$README_FILE"
    echo "| Model | Status | Source | Issue |" >> "$README_FILE"
    echo "| :--- | :---: | :---: | :--- |" >> "$README_FILE"

    # Models
    find "$category_path" -maxdepth 1 -mindepth 1 -type d | sort | while read -r model_path; do
        MODEL_DIR=$(basename "$model_path")
        MODEL_NAME=$(echo "$MODEL_DIR" | sed 's/model-//g' | tr '[:lower:]' '[:upper:]')

        if [ -f "$model_path/solution.cs" ]; then
            STATUS="✅"
            LINK="[\`Solution\`]($model_path/solution.cs)"
            if [ -f "$model_path/README.md" ]; then
                DOC="[\`Explaination\`]($model_path/README.md)"
            else
                DOC="*Pending*"
            fi
        else
            STATUS="⏳"
            LINK="*Pending*"
            DOC="*Pending*"
        fi

        echo "| $MODEL_NAME | $STATUS | $LINK | $DOC |" >> "$README_FILE"
    done

    echo "" >> "$README_FILE"
done
cat <<EOF >> "$README_FILE"
---

## ⚙️ Prerequisites & Setup

### 1️⃣ Install .NET SDK

- **Ubuntu / Debian**
\`\`\`bash
sudo apt update
sudo apt install -y dotnet-sdk-10.0
\`\`\`

- **Fedora / RHEL**
\`\`\`bash
sudo dnf install dotnet-sdk-10.0 -y
\`\`\`

- **Arch Linux / Manjaro**
\`\`\`bash
sudo pacman -S dotnet-sdk --noconfirm
\`\`\`

- **Windows**
Download and install from [https://dotnet.microsoft.com/download](https://dotnet.microsoft.com/download)

- **Other**
Refer to [Microsoft Installation documentation](https://learn.microsoft.com/en-us/dotnet/core/install)

### Build
\`\`\`bash
dotnet build
\`\`\`

---

## ▶️ Running Models

Models are resolved automatically using **reflection**.

\`\`\`bash
make run topic=<category> model=<model>
\`\`\`

**Example:**
\`\`\`bash
make run topic=arrays-1d model=a7
\`\`\`

---

## 🚀 Quick Start

### Create a New Model
\`\`\`bash
make new topic=<category> model=<model>
\`\`\`

**Example:**
\`\`\`bash
make new topic=arrays-1d model=b6
\`\`\`

### Regenerate Documentation
\`\`\`bash
make readme
\`\`\`

## ⚖️ License

This project is licensed under the **GNU General Public License v3.0**.
See the [LICENSE](LICENSE) file for details.

EOF

echo "[*] README rebuilt successfully."
