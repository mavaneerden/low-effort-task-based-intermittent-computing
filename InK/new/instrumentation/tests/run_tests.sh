# TODO: before we can test fully
#   - Add Variable read/write macro to the top of a task depending on the reads/writes (experiment with this optimization later)
#   - Remove the thread-shared stuff, it is not sustainable ✔
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
#   - Global variables in macro
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

# ARGUMENTS:
# $1 - Extra arguments (used mostly for include directories)
# Example: ./run_tests.sh --extra-arg=-I/workspaces/Thesis_Repo/InK/new/kernel/install/include

extra_args="--extra-arg=-w --extra-arg=-D__delay_cycles(a) --extra-arg=-I/usr/local/lib/clang/20/include --extra-arg=-I/usr/local $1"


temp_file_function_labeling=ink_instrumentation_function_labeling_tmp.c
temp_file_pointer_instrumentation_dereference=ink_instrumentation_pointer_instrumentation_dereference_tmp.c
temp_file_pointer_instrumentation_members=ink_instrumentation_pointer_instrumentation_members_tmp.c

citid_output_dir=tests/instrumented_citid/
tics_output_dir=tests/instrumented_tics/

echo "Removing previous output"
rm $citid_output_dir/*.c
rm $tics_output_dir/*.c

# Run plugin passes
echo "Instrumenting with CITID..."
for f in tests/uninstrumented/*.c; do
    build/bin/function_labeling $f $extra_args -- > $temp_file_function_labeling
    build/bin/pointer_instrumentation_members $temp_file_function_labeling $extra_args -- > $temp_file_pointer_instrumentation_members
    build/bin/pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members $extra_args -- > $temp_file_pointer_instrumentation_dereference
    build/bin/variable_instrumentation $temp_file_pointer_instrumentation_dereference $extra_args -- > $citid_output_dir/$(basename "${f}")

    rm $temp_file_function_labeling $temp_file_pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members
done

echo "Instrumenting with TICS..."
for f in tests/uninstrumented/*.c; do
    build/bin/tics $f $extra_args > $tics_output_dir/$(basename "${f}")
done
