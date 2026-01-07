# Model D5

## Problem
Sum of elements at even indices vs odd indices.

## Input
Array of 8 integers.

## Output
- Sum of elements at even indices (0, 2, 4, 6)
- Sum of elements at odd indices (1, 3, 5, 7)

## Logic
1. Read 8 integers into an array
2. Initialize evenSum = 0 and oddSum = 0
3. Iterate through the array with index:
   - If index % 2 == 0, add element to evenSum
   - Otherwise, add element to oddSum
4. Print both sums

## How to Run

```bash
make run topic=arrays-1d model=d5
```
