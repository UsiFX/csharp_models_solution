# Model A5

## Problem
Find max and min in the 2×3 array.

## Input
2×3 matrix (2 rows, 3 columns):
```
22 16 90
37 18 50
```

## Output
- Maximum value from the array
- Minimum value from the array

## Logic
1. Initialize a 2×3 array with the given values
2. Set max = first element, min = first element
3. Use nested loops to iterate through all elements:
   - If current element > max, update max
   - If current element < min, update min
4. Print the maximum and minimum values

## How to Run

```bash
make run topic=arrays-2d model=a5
```
