# TODO: do not use hardcoded workspaces folder (use pwd instead)
extra_args="--extra-arg=-I/usr/local/lib/clang/20/include --extra-arg=-I/workspaces/Thesis_Repo/InK/new/kernel/install/include --extra-arg=-I/workspaces/Thesis_Repo/llvm/llvm-project/install/opt/llvm/include"
ink_include="#include \"ink/address_translation.h\""
results_dir=results

mkdir -p $results_dir

# Run plugin passes
build/bin/function_labeling $1 $extra_args > $results_dir/function_labelling_out.c
build/bin/pointer_instrumentation $results_dir/function_labelling_out.c $extra_args -- > $results_dir/pointer_instrumentation_out.c
build/bin/variable_instrumentation $results_dir/pointer_instrumentation_out.c $extra_args -- > $results_dir/variable_instrumentation_out.c

cp $results_dir/variable_instrumentation_out.c $2
