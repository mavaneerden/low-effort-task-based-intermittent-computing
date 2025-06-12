# ARGUMENTS:
# $1 - Input file
# $2 - Output file name
# $3 - Extra arguments (used mostly for include directories)

addr_translation_include="--extra-arg=-include --extra-arg=ink/address_translation.h"
extra_args="--extra-arg=-w --extra-arg=-I/usr/local/lib/clang/20/include --extra-arg=-I/usr/local $3"
input_dir=$(dirname $1)
temp_file_function_labeling=$input_dir/ink_instrumentation_function_labeling_tmp.c
temp_file_pointer_instrumentation_dereference=$input_dir/ink_instrumentation_pointer_instrumentation_dereference_tmp.c
temp_file_pointer_instrumentation_members=$input_dir/ink_instrumentation_pointer_instrumentation_members_tmp.c
temp_file_variable_instrumentation=$input_dir/ink_instrumentation_variable_instrumentation_tmp.c

pushd $input_dir
rm $2
popd

# Run plugin passes
# TODO: check if passes failed!
build/bin/function_labeling $1 $extra_args -- > $temp_file_function_labeling
if [ "$?" -ne "0" ]; then
    echo -e "\e[1;31mError Instrumenting file $1\e[0m"
    rm $temp_file_function_labeling $temp_file_pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members $temp_file_variable_instrumentation
    exit 1
fi
build/bin/pointer_instrumentation_members $temp_file_function_labeling $extra_args -- > $temp_file_pointer_instrumentation_members
if [ "$?" -ne "0" ]; then
    echo -e "\e[1;31mError Instrumenting file $1\e[0m"
    rm $temp_file_function_labeling $temp_file_pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members $temp_file_variable_instrumentation
    exit 1
fi
build/bin/pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members $extra_args -- > $temp_file_pointer_instrumentation_dereference
if [ "$?" -ne "0" ]; then
    echo -e "\e[1;31mError Instrumenting file $1\e[0m"
    rm $temp_file_function_labeling $temp_file_pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members $temp_file_variable_instrumentation
    exit 1
fi
build/bin/variable_instrumentation $temp_file_pointer_instrumentation_dereference $extra_args -- > $temp_file_variable_instrumentation
if [ "$?" -ne "0" ]; then
    echo -e "\e[1;31mError Instrumenting file $1\e[0m"
    rm $temp_file_function_labeling $temp_file_pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members $temp_file_variable_instrumentation
    exit 1
fi

cp $temp_file_variable_instrumentation $input_dir/$2
rm $temp_file_function_labeling $temp_file_pointer_instrumentation_dereference $temp_file_pointer_instrumentation_members $temp_file_variable_instrumentation
