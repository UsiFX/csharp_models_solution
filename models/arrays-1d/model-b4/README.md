# Model B4

## Problem
Increase elements at even indices by 3 and at odd indices by 4 in a 10-element user-provided array, then print the modified array.

## Question
Write a program to define a 10-element array that accepts values from the user. For each element, if its index is even increase it by 3; if its index is odd increase it by 4. Print the modified array.

## Input
Array of 10 integers provided by the user.

## Output
The modified array printed in one line (each element adjusted: elements at even indices increased by 3, elements at odd indices increased by 4).

## Logic
1. Create an integer array of length 10 and a second array to hold modified values.  
2. Read 10 integers from the user into the array.  
3. Iterate through the array indices from 0 to 9.  
4. For each element:
   - If the index is even (index % 2 == 0), add 3 to the element.
   - If the index is odd, add 4 to the element.
5. Print all modified elements in a single line separated by spaces.

## How to Run

```bash
make run topic=arrays-1d model=b4
```