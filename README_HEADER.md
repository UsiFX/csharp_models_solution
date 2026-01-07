<p align="center">
  <img width="100%" src="https://github.com/UsiFX/csharp_models_solution/blob/main/banner/csharp_solutions.png">
</p>

# 📘 C# Programming Models Solution

<img src="https://img.shields.io/badge/Language-C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white"> <img src="https://img.shields.io/badge/License-GPLv3-blue.svg?style=for-the-badge">

A curated collection of short C# practice exercises (models) focused on arrays, loops, simple numeric operations and small patterns. Each model lives under `models/<topic>/model-<id>/` and typically contains:
- `solution.cs` — the model implementation,
- `README.md` — an explanation for that model.

This provides a clear project overview, how to run models, and an organized map of all models.

---

## Table of contents

- [Getting Started](#getting-started)
- [Project layout](#project-layout)
- [Quick run (Make + dotnet)](#quick-run-make--dotnet)
- [Preview model documentation](#preview-model-documentation)
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

```bash
# Install .NET SDK
sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0

# Install Make
sudo apt-get install -y make

# Verify installation
dotnet --version
make --version
```

#### **Fedora / RHEL / CentOS**

```bash
# Install .NET SDK
sudo dnf install -y dotnet-sdk-8.0

# Install Make
sudo dnf install -y make

# Verify installation
dotnet --version
make --version
```

#### **Windows**

**Option 1: Using winget (Windows 10 1809+/Windows 11)**
```powershell
# Install .NET SDK
winget install Microsoft.DotNet.SDK.8

# Install Make (via Chocolatey - install Chocolatey first from https://chocolatey.org)
choco install make

# Verify installation
dotnet --version
make --version
```

**Option 2: Manual installation**
1. Download and install [.NET SDK 8.0](https://dotnet.microsoft.com/download/dotnet/8.0)
2. Download [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm) or use Windows Subsystem for Linux (WSL)
3. Add installation directories to your PATH
4. Verify in Command Prompt or PowerShell:
   ```
   dotnet --version
   make --version
   ```

#### **macOS**

```bash
# Install .NET SDK
brew install dotnet-sdk

# Make is pre-installed on macOS, but you can update it with:
brew install make

# Verify installation
dotnet --version
make --version
```

### Quick Setup

Once prerequisites are installed:

```bash
# Clone the repository
git clone https://github.com/UsiFX/csharp_models_solution.git
cd csharp_models_solution

# Run a model (example: arrays-1d, model a7)
make run topic=arrays-1d model=a7

# Or without Make:
dotnet run -- arrays-1d a7
```

---

## Project layout

Top-level overview:
- `Program.cs` — app entry; reflection-based runner that invokes a model's `Run()` method.
- `Makefile` — convenience wrappers: `make run`, `make new`, `make readme`.
- `models/` — folders by topic (e.g., `arrays-1d`, `arrays-2d`, `patterns`) containing model subfolders `model-a1`, `model-b2`, etc.
