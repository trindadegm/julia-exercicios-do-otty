include("num_cli.jl")

function main()
    number = NumCli.get_integer_from_args()
    number = convert(Int, clamp(number, 0, 127))
    matrix = create_matrix_shenanigans(number)
    println(matrix)
end

function create_matrix_shenanigans(n::Int)
    matrix = zeros(Float64, (n, n))
    for i in 1:n
        for j in 1:n
            matrix[i, j] = 1.0/(i + j)
        end
    end
    matrix
end

main()
