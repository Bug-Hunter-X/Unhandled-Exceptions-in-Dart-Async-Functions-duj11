# Unhandled Exceptions in Dart Async Functions

This repository demonstrates a common error in Dart asynchronous programming: exceptions thrown within `async` functions are not automatically handled in the calling function unless explicitly re-thrown.

The `bug.dart` file showcases this issue.  The `fetchData` function fetches data from an API. If an error occurs, an exception is thrown.  However, without `rethrow`, the error is caught but not propagated, leading to a seemingly silent failure.

The `bugSolution.dart` file provides a corrected version of the code, using `rethrow` to properly handle exceptions, ensuring that errors are not silently swallowed.