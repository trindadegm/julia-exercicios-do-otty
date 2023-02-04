using Plots

function plot_fn(f, a::Float64, b::Float64, delta=0.01::Float64)
    xset = a:delta:b
    yset = f.(xset)
    plot(xset, yset)
    savefig("baba.pdf")
end

plot_fn(x -> x*x, -2.0, 2.0)