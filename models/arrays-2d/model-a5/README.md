# Model A5

## Problem
Find smallest and largest values in a 2D array.

## Data
22 16 90
37 18 50

## Output
Minimum and maximum values.

## Logic
assign two temporaries one for max and one for min which both indicates for the first element as pre-declaration
Check each element of the array if we saw an element bigger than the max which was the first element. reassign, Iterate till we get the biggest number, same for minimum but we will check all the elements of the array till we see an element which is smaller. 

## How to Run

```bash
make run topic=arrays-2d model=a5
```
