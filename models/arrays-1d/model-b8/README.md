# Model B8

## Problem
Second largest distinct element in a 7-element array.

## Input
Array of 7 integers.

## Output
The second largest distinct value from the array.

## Logic
1. Read 7 integers into an array
2. Initialize two variables: max (largest) and secondMax (second largest)
3. Iterate through the array:
   - If current element > max, update secondMax = max, then max = current
   - Else if current element > secondMax and current != max, update secondMax
4. Print the second largest value

## How to Run

```bash
make run topic=arrays-1d model=b8
```
