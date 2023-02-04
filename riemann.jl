module Rieamann

function riemann_sum(f, a::Float64, b::Float64, δ=0.00001::Float64)
    result = 0.0
    for x in a:δ:b
        result += f(x)*δ
    end
    result
end

println(riemann_sum(x -> x*x, -1.0, 1.0))

end # Module