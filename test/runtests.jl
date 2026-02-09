using SampleJulia: add, get_version
using Test

@testset "SampleJulia.jl" begin
    @test add(1, 2) == 3
    @test add(-1, 1) == 0
    @test add(0, 0) == 0
end

@testset "Version" begin
    v = get_version()
    @test v isa VersionNumber
    @test v == v"0.1.0"
end
