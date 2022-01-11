using PackageCompiler

create_sysimage(:JuliaHPCApp,
                sysimage_path="JHPC.so",
                cpu_target = "generic;sandybridge,-xsaveopt,clone_all;haswell,-rdrnd,base(1)",
                precompile_execution_file="scripts/precompile.jl",
                incremental = false);
