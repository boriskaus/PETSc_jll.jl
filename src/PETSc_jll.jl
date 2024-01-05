# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule PETSc_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("PETSc")
JLLWrappers.@generate_main_file("PETSc", UUID("8fa3689e-f0b9-5420-9873-adf6ccf46f2d"))
end  # module PETSc_jll
