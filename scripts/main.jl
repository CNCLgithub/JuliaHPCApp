using JuliaHPCApp

function main::CInt
    try
        JuliaHPCApp.greeting()
    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        return 1
    end
    return 0
end

if abspath(PROGRAM_FILE) == @__FILE__
    real_main()
end
