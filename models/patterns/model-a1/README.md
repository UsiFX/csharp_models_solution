# Model A1

## Problem
Print descending triangular numbers pattern.

## Input
No input required.

## Output
```
9 8 7 6
5 4 3
2 1
0
```

## Logic
1. Initialize a counter starting at 9
2. Use nested for loops:
   - Outer loop: 4 rows (decreasing length: 4, 3, 2, 1)
   - Inner loop: print numbers in descending order
3. For each row:
   - Print the required number of values
   - Decrement the counter after each number
4. Print each row on a new line

## How to Run

```bash
make run topic=patterns model=a1
```
