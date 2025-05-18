# TODO: do not use hardcoded workspaces folder (use pwd instead)
extra_args="--extra-arg=-I/usr/local/lib/clang/20/include --extra-arg=-I/workspaces/Thesis_Repo/InK/new/kernel/install/include --extra-arg=-I/workspaces/Thesis_Repo/llvm/llvm-project/install/opt/llvm/include"

results_dir=results

mkdir -p $results_dir

build/bin/function_labeling $1 $extra_args > $results_dir/out.c
build/bin/pointer_instrumentation $results_dir/out.c $extra_args -- > $results_dir/out2.c
build/bin/variable_instrumentation $results_dir/out2.c $extra_args -- > $2
