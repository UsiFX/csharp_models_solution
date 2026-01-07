# Model C9

## Problem
Difference between sums of even and odd elements.

## Input
Array of 8 integers.

## Output
The difference: (sum of even elements) - (sum of odd elements)

## Logic
1. Read 8 integers into an array
2. Initialize evenSum = 0 and oddSum = 0
3. Iterate through each element:
   - If element % 2 == 0, add to evenSum
   - Otherwise, add to oddSum
4. Calculate difference = evenSum - oddSum
5. Print the difference

## How to Run

```bash
make run topic=arrays-1d model=c9
```
