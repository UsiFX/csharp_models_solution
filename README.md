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

---

## Quick run (Make + dotnet)

Two common ways to run models:

1) Using Make (convenience; Makefile calls dotnet):
- Run a model:
  - `make run topic=<category> model=<model>`
  - Example:
    - `make run topic=arrays-1d model=a7`
  - This executes `dotnet run -- <category> <model>` under the hood.

2) Direct dotnet run (no Make required):
- From repo root (single multi-model project):
  - `dotnet run -- arrays-1d a7`
  - Program receives `args[0] = "arrays-1d"`, `args[1] = "a7"`

Notes:
- `--` separates dotnet CLI options from application arguments. All tokens after `--` are forwarded to your `Main(string[] args)`.

---

## How the runner works

- `Program.cs` expects exactly two arguments: `<category>` and `<model>`.
- It normalizes the category (e.g., `arrays-1d` → `arrays1d`), then searches the assembly for a type named `Model<model>` within a namespace that ends with the normalized category.
- It invokes that type's public static `Run()` method using reflection.
- This design allows each model to be implemented as a static class `ModelA7` (for example) in the appropriate namespace.

If `make run` or `dotnet run -- <category> <model>` prints `[!] Model ... not found`, ensure the model's `solution.cs` exists, the namespace matches the category folder, and the class provides a public static `Run()` method.

---

## Create / regenerate models

- Create a new model scaffold:
  - `make new topic=<category> model=<model>`
  - Example: `make new topic=arrays-1d model=b6`
  - Internally this runs `new_model.sh` which creates `models/<topic>/model-<model>/solution.cs` with a template.

- Regenerate README from `models/`:
  - `make readme`
  - This runs `generate_readme.sh` which will overwrite `README.md`. If you've made manual edits, either update the generator or avoid running this target.

---

## Models (organized by topic)

Each model folder typically includes a per-model README with a problem statement, input/output expectations, and how to run that particular model. Below is a compact, organized map (with short descriptions) to help you find and run models quickly.

Note: model IDs correspond to folder names `models/<topic>/model-<id>/`. Use `make run topic=<topic> model=<id>` or `dotnet run -- <topic> <id>` to execute.

Arrays 1D (`models/arrays-1d/`)
- [A3](models/arrays-1d/model-a3/README.md) — Modify elements in a value range and compute their sum.
- [A4](models/arrays-1d/model-a4/README.md) — Copy array with a special-case element (second element copied unchanged).
- [A6](models/arrays-1d/model-a6/README.md) — Multiply each element of a user-defined array by its index and print the resulting array.
- [A7](models/arrays-1d/model-a7/README.md) — Read 6 integers, swap first and last, print result.
- [A8](models/arrays-1d/model-a8/README.md) — Replace negative elements with absolute values.
- [A9](models/arrays-1d/model-a9/README.md) — Print elements located at even indices from a 10-element array.
- B1 — Conditional +/- 3 depending on threshold. **(Unsolved)**
- [B2](models/arrays-1d/model-b2/README.md) — Element-wise sum of two 3-element arrays, multiplied by 3.
- [B3](models/arrays-1d/model-b3/README.md) — Print sqrt for numbers divisible by 3 but not 2.
- B4 — (Model not yet implemented) **(Unsolved)**
- [B5](models/arrays-1d/model-b5/README.md) — Element-wise sum of two arrays (length 3).
- [B6](models/arrays-1d/model-b6/README.md) — Print sqrt for numbers divisible by 3.
- [B7](models/arrays-1d/model-b7/README.md) — Count occurrences of a number X in an 8-element array.
- [B8](models/arrays-1d/model-b8/README.md) — Second largest distinct element in a 7-element array.
- [C1](models/arrays-1d/model-c1/README.md) — Print elements that appear more than once (duplicate detection).
- [C2](models/arrays-1d/model-c2/README.md) — Print numbers within [25,75] from a larger array.
- [C3](models/arrays-1d/model-c3/README.md) — Print elements strictly greater than the average (n ≤ 10).
- [C4](models/arrays-1d/model-c4/README.md) — Count of even and odd elements (8 integers).
- [C5](models/arrays-1d/model-c5/README.md) — Copy elements at odd indices into a new array.
- [C6](models/arrays-1d/model-c6/README.md) — Count increases vs previous element in an 8-element array.
- [C7](models/arrays-1d/model-c7/README.md) — Print numbers between 10 and 50 inclusive.
- [C8](models/arrays-1d/model-c8/README.md) — Sum of even numbers in given array.
- [C9](models/arrays-1d/model-c9/README.md) — Difference between sums of even and odd elements.
- [D1](models/arrays-1d/model-d1/README.md) — Print reversed elements greater than 20.
- [D2](models/arrays-1d/model-d2/README.md) — Index of first maximum in an array (n ≤ 12).
- [D4](models/arrays-1d/model-d4/README.md) — Reverse array in-place (6 integers).
- [D5](models/arrays-1d/model-d5/README.md) — Sum of elements at even indices vs odd indices.
- [D6](models/arrays-1d/model-d6/README.md) — Print elements divisible by 6.
- [D7](models/arrays-1d/model-d7/README.md) — Print array then elements greater than 15.
- [D8](models/arrays-1d/model-d8/README.md) — Average rounded to nearest integer (10 integers).
- [D9](models/arrays-1d/model-d9/README.md) — Print maximum and minimum from 9 integers.

Arrays 2D (`models/arrays-2d/`)
- [A2](models/arrays-2d/model-a2/README.md) — 2×3 filter by ( >25 & even ) OR ( <25 & divisible by 3 ).
- [A5](models/arrays-2d/model-a5/README.md) — Find max and min in the 2×3 array.
- [B9](models/arrays-2d/model-b9/README.md) — Sum columns from two rows (2×3).

Patterns (`models/patterns/`)
- [A1](models/patterns/model-a1/README.md) — Print descending triangular numbers pattern.
- [D3](models/patterns/model-d3/README.md) — Print triangular increasing numbers pattern.

---

## Contributing & notes

- If you edit this README by hand, avoid running `make readme` because `generate_readme.sh` will overwrite it.
- If you want to keep a custom header (banner or text), update `generate_readme.sh` to preserve or read a header template.
- When creating new models via `make new`, fill the generated `solution.cs` and add a short `README.md` describing Input/Output and any sample I/O.
- For automated testing, prefer programs that read from stdin (no interactive prompts) and print precise outputs.

---

## License

This project is licensed under the GNU General Public License v3.0 — see the [LICENSE](LICENSE) file for details.

