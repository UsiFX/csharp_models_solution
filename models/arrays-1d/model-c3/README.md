# Model C3

## Problem
Print elements strictly greater than the average (n ≤ 10).

## Input
- Number of elements n (where n ≤ 10)
- n integers

## Output
Elements that are strictly greater than the average, each printed on a new line.

## Logic
1. Read the number of elements n
2. Read n integers into an array
3. Calculate the average: sum all elements and divide by n
4. Iterate through the array again:
   - If element > average (strictly greater), print it
5. Print each qualifying element on a separate line

## How to Run

```bash
make run topic=arrays-1d model=c3
```
