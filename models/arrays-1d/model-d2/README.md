# Model D2

## Problem
Index of first maximum in an array (n ≤ 12).

## Input
- Number of elements n (where n ≤ 12)
- n integers

## Output
The index (0-based) of the first occurrence of the maximum value.

## Logic
1. Read the number of elements n
2. Read n integers into an array
3. Initialize maxValue = array[0] and maxIndex = 0
4. Iterate through the array starting from index 1:
   - If current element > maxValue, update maxValue and maxIndex
5. Print the index of the first maximum

## How to Run

```bash
make run topic=arrays-1d model=d2
```
