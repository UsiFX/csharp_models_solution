# Model B3

## Problem
Print sqrt for numbers divisible by 3 but not 2.

## Input
Array of 6 integers.

## Output
Square roots of elements that are divisible by 3 but NOT divisible by 2.

## Logic
1. Read 6 integers into an array
2. Iterate through each element:
   - Check if element % 3 == 0 (divisible by 3)
   - Check if element % 2 != 0 (NOT divisible by 2)
   - If both conditions are true, calculate and print Math.Sqrt(element)
3. Print the square roots of qualifying elements

## How to Run

```bash
make run topic=arrays-1d model=b3
```
