# Model B1

## Problem
Write a program to define a 10-element array that accepts values from the user. For each element, if it is greater than or equal to 6 decrease it by 1; if it is less than 6 increase it by 3. Print the modified array.

## Input
Array of 10 integers provided by the user.

## Output
The modified array printed in one line (each element adjusted: elements >= 6 decreased by 1, elements < 6 increased by 3).

## Logic
1. Create an integer array of length 10.  
2. Read 10 integers from the user into the array.  
3. Iterate through the array indices from 0 to 9.  
4. For each element:
   - If the element is greater than or equal to 6, subtract 1 from it.
   - Otherwise, add 3 to it.
5. Print all modified elements in a single line separated by spaces.

## How to Run

```bash
make run topic=arrays-1d model=b1
```