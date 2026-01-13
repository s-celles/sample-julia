# sample-julia

Julia Devcontainer Sample

## Required minimal Git settings

```bash
$ git config --global user.name "yourusername"
$ git config --global user.email "your.user@domain.com"
$ git config --global github.user "your-gh-user"
```

## Create a package using PkgTemplates
```
julia
julia> using PkgTemplates
julia> tpl = Template(;
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

## Move packages files

Currently package is available at `/workspaces/sample-julia/SampleJulia`.

Move it to have it available at `/workspaces/sample-julia/`

Be aware that `README.md` (ie this file) will be overwritten by those from `SampleJulia` directory!

```bash
$ shopt -s dotglob
$ mv -f SampleJulia/* .
```

Remove `SampleJulia` if nothing important for you is still there.