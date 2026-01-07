# Model C6

## Problem
Count increases vs previous element in an 8-element array.

## Input
Array of 8 integers.

## Output
Number of times an element is greater than the previous element.

## Logic
1. Read 8 integers into an array
2. Initialize a counter to 0
3. Iterate from index 1 to 7 (starting from second element):
   - Compare arr[i] with arr[i-1]
   - If arr[i] > arr[i-1], increment the counter
4. Print the final count

## How to Run

```bash
make run topic=arrays-1d model=c6
```
