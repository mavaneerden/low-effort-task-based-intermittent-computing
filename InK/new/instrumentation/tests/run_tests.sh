# TODO: before we can test fully
#   - Add Variable read/write macro to the top of a task depending on the reads/writes (experiment with this optimization later)
#   - Remove the thread-shared stuff, it is not sustainable
#   - Enforce single thread per file isolation ✔
#   - Disallow extern/header task functions/shared variables (when non-const) ✔
#   - Instrument all shared variables that are used in the global scope by other shared variables but not in tasks ✔

# Tests to run (in order):
# - Tasks ✔
#   - Task & non-task functions
#   - Extern task functions (check if error)
#   - Header task functions (check if error)
# - Variables ✔
#   - Global variables read
#   - Global variables write
#   - Static variables
#   - Global variables not directly used in tasks
#   - Shared variable use outside tasks (check if error)
#   - Non-const extern shared variables (check if error)
#   - Non-const header shared variables (check if error)
#   - Task returns illegal pointer (check if error)
#   - Multiple threads in a file (check if error)
# - Arrays ✔
#   - Read
#   - (Compound) assign write
#   - Unary operator write
#   - Nested element access
# - Structs/Unions ✔
#   - Read
#   - (Compound) assign write
#   - Unary operator write
#   - (Nested) Anonymous structs/unions
# - Pointers to shared data ✔
#   - Read
#   - (Compound) assign write
#   - Unary operator write
#   - Dereference
#   - Array subscript
#   - Member access
#   - Nested expressions
# - Pointers to local data ✔
#   - Read
#   - (Compound) assign write
#   - Unary operator write
#   - Dereference
#   - Array subscript
#   - Member access
#   - Nested expressions