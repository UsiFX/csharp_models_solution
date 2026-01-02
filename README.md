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
| Model | Status | Source |
| :--- | :---: | :--- |
| A3 | ⏳ | *Pending* |
| A4 | ⏳ | *Pending* |
| A6 | ⏳ | *Pending* |
| A7 | ✅ | [`solution.cs`](models/arrays-1d/model-a7/solution.cs) |
| A8 | ✅ | [`solution.cs`](models/arrays-1d/model-a8/solution.cs) |
| A9 | ✅ | [`solution.cs`](models/arrays-1d/model-a9/solution.cs) |
| B1 | ⏳ | *Pending* |
| B2 | ⏳ | *Pending* |
| B4 | ⏳ | *Pending* |
| B5 | ✅ | [`solution.cs`](models/arrays-1d/model-b5/solution.cs) |
| B6 | ✅ | [`solution.cs`](models/arrays-1d/model-b6/solution.cs) |
| B7 | ✅ | [`solution.cs`](models/arrays-1d/model-b7/solution.cs) |
| B8 | ✅ | [`solution.cs`](models/arrays-1d/model-b8/solution.cs) |
| C1 | ⏳ | *Pending* |
| C2 | ⏳ | *Pending* |
| C3 | ⏳ | *Pending* |
| C4 | ⏳ | *Pending* |
| C5 | ⏳ | *Pending* |
| C6 | ⏳ | *Pending* |
| C7 | ⏳ | *Pending* |
| C8 | ⏳ | *Pending* |
| C9 | ⏳ | *Pending* |
| D1 | ⏳ | *Pending* |
| D2 | ⏳ | *Pending* |
| D4 | ⏳ | *Pending* |
| D5 | ⏳ | *Pending* |
| D6 | ⏳ | *Pending* |
| D7 | ⏳ | *Pending* |
| D8 | ⏳ | *Pending* |
| D9 | ⏳ | *Pending* |

### 📦 Arrays 2d
| Model | Status | Source |
| :--- | :---: | :--- |
| A2 | ⏳ | *Pending* |
| A5 | ✅ | [`solution.cs`](models/arrays-2d/model-a5/solution.cs) |
| B9 | ⏳ | *Pending* |

### 📦 Patterns
| Model | Status | Source |
| :--- | :---: | :--- |

---

## ⚙️ Prerequisites & Setup

### 1️⃣ Install .NET SDK

- **Ubuntu / Debian**
```bash
# apt update
# apt install -y dotnet-sdk-10.0
```

- **Fedora / RHEL**
```bash
# dnf install dotnet-sdk-10.0 -y
```

- **Arch Linux / Manjaro**
```bash
# pacman -S dotnet-sdk --noconfirm
```

- **Windows**
Download and install from [https://dotnet.microsoft.com/download](https://dotnet.microsoft.com/download)

- **Other**
Refer to [Microsoft Installation documentation](https://learn.microsoft.com/en-us/dotnet/core/install)

### Build
```bash
$ dotnet build
```

---

## ▶️ Running Models

Models are resolved automatically using **reflection**.

```bash
$ make run topic=<category> model=<model>
```

**Example:**
```bash
$ make run topic=arrays-1d model=a7
```

---

## 🚀 Quick Start

### Create a New Model
```bash
$ make new topic=<category> model=<model>
```

**Example:**
```bash
$ make new topic=arrays-1d model=b6
```

### Regenerate Documentation
```bash
$ make readme
```

## ⚖️ License

This project is licensed under the **GNU General Public License v3.0**.
See the [LICENSE](LICENSE) file for details.

