module MaMatrix

using Printf

function main()
    lines = 0
    columns = 0

    while true
        println("Dimensões da matriz (linhas e colunas, ex: \"5 3\")")
        try
            dimensions = readline()
            parts = split(dimensions, " ")
            lines = parse(Int, parts[1])
            columns = parse(Int, parts[2])
            break
        catch
            write(sterr, "Dimensões inválidas, tente novamente")
        end
    end

    matrix = zeros(Float64, (lines, columns))

    for i in 1:lines
        for j in 1:columns
            value = 0
            while true
                @printf("Digite o elemento da linha %d, coluna %d\n", i, j);
                try
                    value = parse(Float64, readline())
                    break
                catch
                    write(sterr, "Número inválido, tente novamente")
                end
            end
            matrix[i,j] = value
        end
    end

    println(matrix)

    println("O maior é:")
    println(findmax(matrix)[1])
end

main()

end # Module