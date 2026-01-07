# Model C1

## Problem
Print elements that appear more than once (duplicate detection).

## Input
- Size of the array (n)
- n integer elements

## Output
- All array elements
- Duplicate elements (each unique duplicate printed once)

## Logic
1. Read the array size and elements
2. Print all array elements
3. Use nested loops to detect duplicates:
   - Outer loop: iterate through each element at index i
   - Inner loop: check elements from index i+1 onwards
   - If a match is found and it hasn't been printed yet, mark it as duplicate
4. Print each duplicate value only once

## How to Run

```bash
make run topic=arrays-1d model=c1
```
