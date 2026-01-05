# Model A6

## Problem
Multiply each element of a user-defined array by its index and print the resulting array.

## Input
Array of 6 integers.

## Output
Array of 6 integers, where each element is multiplied by its **1-based index**, printed in one line.

## Logic
1. Accept 6 integers from the user and store them in an array.
2. Create a new array to hold the results.
3. Loop through the original array:
   - Multiply each element by its **1-based position** (index + 1).
   - Store the result in the new array.
4. Use `foreach` to print the result array in a single line.

## How to Run

```bash
make run topic=arrays-1d model=a6
```
