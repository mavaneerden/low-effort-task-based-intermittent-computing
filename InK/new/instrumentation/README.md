# Code Instrumentation

## Introduction


## Instrumentation
The code instrumentation consists of three separate passes, which are listed in order below.

### Function labeling
Task functions are labeled according to the thread they are part of. This associates each task function with a thread, grouped by priority. This is necessary for the next two passes to function correctly.

Task functions are detected by checking the return value of the thread entry function. If the return value is a pointer to a function, that function will be labeled as belonging to the same thread as the entry function. The newly labeled function will also have its return values checked. This goes on until all functions have been labeled.

### Pointer instrumentation
Pointer dereference operations *must* be instrumented in *all* task functions to ensure correctness. A macro is inserted for every pointer dereference operation that occurs inside a task function. This macro checks if the data the pointer points to is shared between tasks or threads. If it is, the correct buffer is used and the shared data is marked for backup.

### Variable instrumentation
Task- or thread-shared variables that are accessed within task functions are instrumented with a macro. This macro chooses which buffer to use based on a runtime-internal variable.

## Optimizations

## User constraints
- Task- or thread-shared variables may *not* be accessed outside task functions, as this could violate correctness.