# Model B9

## Problem
Sum columns from two rows (2×3).

## Input
2×3 matrix (2 rows, 3 columns):
```
22 16 90
37 18 50
```

## Output
Array with 3 elements, each being the sum of the corresponding column:
- result[0] = row1[0] + row2[0] = 22 + 37 = 59
- result[1] = row1[1] + row2[1] = 16 + 18 = 34
- result[2] = row1[2] + row2[2] = 90 + 50 = 140

## Logic
1. Initialize a 2×3 array with the given values
2. Create a result array of size 3
3. For each column index (0 to 2):
   - Sum the elements from row 0 and row 1 at that column
   - Store in result array
4. Print the result array

## How to Run

```bash
make run topic=arrays-2d model=b9
```
