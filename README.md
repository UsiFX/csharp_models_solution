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

### 📦 Arrays 1d
| Model | Status | Source | Issue |
| :--- | :---: | :---: | :--- |
| A3 | ✅ | [`Solution`](models/arrays-1d/model-a3/solution.cs) | [`Explaination`](models/arrays-1d/model-a3/README.md) |
| A4 | ✅ | [`Solution`](models/arrays-1d/model-a4/solution.cs) | [`Explaination`](models/arrays-1d/model-a4/README.md) |
| A6 | ✅ | [`Solution`](models/arrays-1d/model-a6/solution.cs) | [`Explaination`](models/arrays-1d/model-a6/README.md) |
| A7 | ✅ | [`Solution`](models/arrays-1d/model-a7/solution.cs) | [`Explaination`](models/arrays-1d/model-a7/README.md) |
| A8 | ✅ | [`Solution`](models/arrays-1d/model-a8/solution.cs) | [`Explaination`](models/arrays-1d/model-a8/README.md) |
| A9 | ✅ | [`Solution`](models/arrays-1d/model-a9/solution.cs) | [`Explaination`](models/arrays-1d/model-a9/README.md) |
| B1 | ⏳ | *Pending* | *Pending* |
| B2 | ⏳ | *Pending* | *Pending* |
| B3 | ⏳ | *Pending* | *Pending* |
| B4 | ⏳ | *Pending* | *Pending* |
| B5 | ✅ | [`Solution`](models/arrays-1d/model-b5/solution.cs) | *Pending* |
| B6 | ✅ | [`Solution`](models/arrays-1d/model-b6/solution.cs) | *Pending* |
| B7 | ✅ | [`Solution`](models/arrays-1d/model-b7/solution.cs) | *Pending* |
| B8 | ✅ | [`Solution`](models/arrays-1d/model-b8/solution.cs) | *Pending* |
| C1 | ⏳ | *Pending* | *Pending* |
| C2 | ⏳ | *Pending* | *Pending* |
| C3 | ⏳ | *Pending* | *Pending* |
| C4 | ⏳ | *Pending* | *Pending* |
| C5 | ⏳ | *Pending* | *Pending* |
| C6 | ⏳ | *Pending* | *Pending* |
| C7 | ⏳ | *Pending* | *Pending* |
| C8 | ⏳ | *Pending* | *Pending* |
| C9 | ⏳ | *Pending* | *Pending* |
| D1 | ⏳ | *Pending* | *Pending* |
| D2 | ⏳ | *Pending* | *Pending* |
| D4 | ⏳ | *Pending* | *Pending* |
| D5 | ⏳ | *Pending* | *Pending* |
| D6 | ⏳ | *Pending* | *Pending* |
| D7 | ⏳ | *Pending* | *Pending* |
| D8 | ⏳ | *Pending* | *Pending* |
| D9 | ⏳ | *Pending* | *Pending* |

### 📦 Arrays 2d
| Model | Status | Source | Issue |
| :--- | :---: | :---: | :--- |
| A2 | ⏳ | *Pending* | *Pending* |
| A5 | ✅ | [`Solution`](models/arrays-2d/model-a5/solution.cs) | [`Explaination`](models/arrays-2d/model-a5/README.md) |
| B9 | ⏳ | *Pending* | *Pending* |

### 📦 Patterns
| Model | Status | Source | Issue |
| :--- | :---: | :---: | :--- |
| A1 | ✅ | [`Solution`](models/patterns/model-a1/solution.cs) | [`Explaination`](models/patterns/model-a1/README.md) |
| D3 | ✅ | [`Solution`](models/patterns/model-d3/solution.cs) | [`Explaination`](models/patterns/model-d3/README.md) |

---

## ⚙️ Prerequisites & Setup

### 1️⃣ Install .NET SDK

- **Ubuntu / Debian**
```bash
sudo apt update
sudo apt install -y dotnet-sdk-10.0
```

- **Fedora / RHEL**
```bash
sudo dnf install dotnet-sdk-10.0 -y
```

- **Arch Linux / Manjaro**
```bash
sudo pacman -S dotnet-sdk --noconfirm
```

- **Windows**
Download and install from [https://dotnet.microsoft.com/download](https://dotnet.microsoft.com/download)

- **Other**
Refer to [Microsoft Installation documentation](https://learn.microsoft.com/en-us/dotnet/core/install)

### Build
```bash
dotnet build
```

---

## ▶️ Running Models

Models are resolved automatically using **reflection**.

```bash
make run topic=<category> model=<model>
```

**Example:**
```bash
make run topic=arrays-1d model=a7
```

---

## 🚀 Quick Start

### Create a New Model
```bash
make new topic=<category> model=<model>
```

**Example:**
```bash
make new topic=arrays-1d model=b6
```

### Regenerate Documentation
```bash
make readme
```

## ⚖️ License

This project is licensed under the **GNU General Public License v3.0**.
See the [LICENSE](LICENSE) file for details.

