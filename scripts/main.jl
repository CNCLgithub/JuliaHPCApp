using JuliaHPCApp

function main()::Cint
    try
        JuliaHPCApp.greet()
    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        return 1
    end
    return 0
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
