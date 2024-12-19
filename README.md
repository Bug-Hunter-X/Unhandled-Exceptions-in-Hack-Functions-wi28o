# Unhandled Exceptions in Hack Functions

This repository demonstrates a potential issue with unhandled exceptions in Hack functions.  The `bug.hack` file contains a simple program that calls helper functions. If the helper functions throw exceptions, the main function's `echo` statement may not execute, potentially leading to unexpected program behavior.

The `bugSolution.hack` file offers a more robust solution that uses try-catch blocks to handle potential exceptions and provides informative error messages.