# Model A2

## Problem
2×3 filter by ( >25 & even ) OR ( <25 & divisible by 3 ).

## Input
2×3 matrix (2 rows, 3 columns):
```
22 16 90
37 18 50
```

## Output
Elements that match either condition:
- (element > 25 AND element is even) OR
- (element < 25 AND element is divisible by 3)

## Logic
1. Initialize a 2×3 array with the given values
2. Use nested loops to iterate through rows and columns
3. For each element, check:
   - If (element > 25 AND element % 2 == 0) OR (element < 25 AND element % 3 == 0)
   - If true, print the element
4. Print all qualifying elements

## How to Run

```bash
make run topic=arrays-2d model=a2
```
