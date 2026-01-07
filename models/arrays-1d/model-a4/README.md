# Model A4

## Problem
Copy array with a special-case element (second element copied unchanged).

## Input
Array of 5 integers (e.g., 72 101 108 108 111)

## Output
- Original array
- New array with all values increased by 6 except the second element (index 1), which remains unchanged

## Logic
1. Read 5 integers into an array
2. Create a new array of the same size
3. Loop through the array:
   - If the index is 1 (second element), copy the value unchanged
   - For all other elements, add 6 to the value before copying
4. Print both the original and modified arrays

## How to Run

```bash
make run topic=arrays-1d model=a4
```
