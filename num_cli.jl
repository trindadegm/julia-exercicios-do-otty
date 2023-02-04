module NumCli

function get_integer_from_args()::BigInt
    number::BigInt = 0
    if length(ARGS) < 1
        write(stderr, "Falta argumento\n")
        exit(1)
    else
        try
            number = parse(BigInt, ARGS[1])
        catch
            write(stderr, "Número inválido\n")
            exit(1)
        end
    end

    number
end

end # Module