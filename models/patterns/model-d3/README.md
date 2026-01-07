# Model D3

## Problem
Print triangular increasing numbers pattern.

## Input
No input required.

## Output
```
1
2 3
4 5 6
7 8 9 10
```

## Logic
1. Initialize a counter starting at 1
2. Use nested for loops:
   - Outer loop: 4 rows (increasing length: 1, 2, 3, 4)
   - Inner loop: print numbers in ascending order
3. For each row i (starting from 1):
   - Print i numbers
   - Increment the counter after each number
4. Print each row on a new line

## How to Run

```bash
make run topic=patterns model=d3
```
