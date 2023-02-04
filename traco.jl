function traço(a::Matrix)
    dim = size(a)
    if dim[1] != dim[2]
        error("Matrix not square")
    else
        sidelen = dim[1]
        sum(1:sidelen .|> i -> (i, i) |> w -> a[w[1], w[2]])
    end
end

a = [1 2 3; 4 5 6; 7 8 9]
println(a)
t = traço(a)
println("Traço é ", t)