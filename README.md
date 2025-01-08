# Uncommon MATLAB Error: Unexpected error handling behavior

This repository demonstrates an uncommon error in MATLAB related to the `error()` function within a function that might not always execute the error statement.  The issue arises when the error condition isn't always met, leading to unexpected behavior in certain scenarios. This example highlights a potential pitfall when not carefully handling conditional error statements within functions.

## Bug Description

The `bug.m` file contains a MATLAB function `myFunction` that performs a simple calculation. However, if the input is negative, it calls `error()`. The main script attempts to run `myFunction` with a negative input. While this example will clearly throw an error, a more subtle problem occurs when inputs are only sometimes negative. Unexpected errors might be hidden in code that only triggers errors under specific conditions or inputs.

## Solution

The solution provided in `bugSolution.m` demonstrates a safer approach to error handling by using `try-catch` blocks. The `try-catch` block ensures that the code gracefully handles potential errors.  This approach ensures that program execution won't halt unexpectedly and allows for more controlled error handling, making debugging and error analysis much more manageable.
