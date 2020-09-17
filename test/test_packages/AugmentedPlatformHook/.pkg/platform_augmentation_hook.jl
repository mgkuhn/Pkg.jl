using Base.BinaryPlatforms

# Prove that we're running within our own project, not Pkg's
using StructIO

function augment_platform!(p::Platform)
    # This hook will simply check an environment variable
    flooblecrank_status = get(ENV, "FLOOBLECRANK", "disengaged")
    if flooblecrank_status == "engaged"
        p["flooblecrank"] = "engaged"
    else
        p["flooblecrank"] = "disengaged"
    end
    return p
end