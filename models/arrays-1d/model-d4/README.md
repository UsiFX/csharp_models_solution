# Model D4

## Problem
Reverse array in-place (6 integers).

## Input
Array of 6 integers.

## Output
The array reversed in-place.

## Logic
1. Read 6 integers into an array
2. Use two pointers: start = 0, end = 5
3. While start < end:
   - Swap array[start] with array[end]
   - Increment start, decrement end
4. Print the reversed array

## How to Run

```bash
make run topic=arrays-1d model=d4
```
