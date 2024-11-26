# sample-julia

Julia Devcontainer Sample

## Create a package using PkgTemplates
```
julia
julia> using PkgTemplates
julia> tpl = Template(;
    user="yourusername",
    dir="/workspaces/sample-julia",
    plugins=[
        # Git(; manifest=true, ssh=true),
        # GitHubActions(; x86=true),
        # Codecov(),
        # Documenter{GitHubActions}(),
    ],
)
julia> tpl("SampleJulia")
```

`SampleJulia` directory like the following should be displayed in your favorite IDE:

```
SampleJulia/
├── .github
│   ├── dependabot.yml
│   └── workflows
│       ├── CI.yml
│       ├── CompatHelper.yml
│       └── TagBot.yml
├── .gitignore
├── LICENSE
├── Manifest.toml
├── Project.toml
├── README.md
├── src
│   └── SampleJulia.jl
└── test
    └── runtests.jl
```

## Modify package code

Edit `src/SampleJulia` with

```julia
module SampleJulia

function greet()
    println("Hello Julia!")
end

function add(x, y)
    x + y
end

greet()

end
```

## Run script

```bash
$ cd SampleJulia
$ julia --project=. src/SampleJulia.jl
```

## Unit tests

- Edit `test/runtests.jl`

```julia
using SampleJulia: add
using Test

@testset "SampleJulia.jl" begin
    @test add(1, 2) == 3
end
```

- Run unit tests

```
julia> ]
pkg> activate .
pkg> test
...
     Testing Running tests...
Test Summary:  | Pass  Total  Time
SampleJulia.jl |    1      1  0.0s
     Testing SampleJulia tests passed
```
