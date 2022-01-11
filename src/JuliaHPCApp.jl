module JuliaHPCApp

greet() = print("Hello World!")


function julia_main()::Cint
    try
        real_main()
    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        return 1
    end
    return 0
end


function real_main()
    @show ARGS
    @show Base.PROGRAM_FILE
    @show DEPOT_PATH
    @show LOAD_PATH
    @show pwd()
    @show Base.active_project()
    @show Sys.BINDIR

    @show Base.JLOptions().opt_level
    @show Base.JLOptions().nthreads
    @show Base.JLOptions().check_bounds

    display(Base.loaded_modules)
    println()
    greet()
    return
end

if abspath(PROGRAM_FILE) == @__FILE__
    real_main()
end

# Used for testing
function second_main()::Cint
    println("Hello from second main")
    return 0
end

function wrong_return_type()
    return "oops"
end

function erroring()
    1 + "foo"
    return 0
end


end # module
