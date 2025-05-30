# ARGUMENTS:
# $1 - Input file
# $2 - Output file name
# $3 - Extra arguments (used mostly for include directories)

extra_args="--extra-arg=-w --extra-arg=-I/usr/local/lib/clang/20/include --extra-arg=-I/usr/local $3"
input_dir=$(dirname $1)
temp_file_function_labeling=$input_dir/ink_instrumentation_function_labeling_tmp.c
temp_file_pointer_instrumentation=$input_dir/ink_instrumentation_pointer_instrumentation_tmp.c
temp_file_variable_instrumentation=$input_dir/ink_instrumentation_variable_instrumentation_tmp.c

# Run plugin passes
# TODO: check if passes failed!
build/bin/function_labeling $1 $extra_args -- > $temp_file_function_labeling
build/bin/pointer_instrumentation $temp_file_function_labeling $extra_args -- > $temp_file_pointer_instrumentation
build/bin/variable_instrumentation $temp_file_pointer_instrumentation $extra_args -- > $temp_file_variable_instrumentation

cp $temp_file_variable_instrumentation $input_dir/$2
rm $temp_file_function_labeling $temp_file_pointer_instrumentation $temp_file_variable_instrumentation
