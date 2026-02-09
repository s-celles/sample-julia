module SampleJulia

using TOML

function get_version()
    project_file = joinpath(dirname(@__DIR__), "Project.toml")
    project = TOML.parsefile(project_file)
    return VersionNumber(project["version"])
end

function greet()
    println("Hello Julia!")
end

function add(x, y)
    return x + y
end

greet()
println("Version $(get_version())")

end
