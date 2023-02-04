module ParEFibonacci

using Printf

function is_even(i::BigInt)::Bool
    i % 2 == 0
end

# A funcão não vai ser implementada recursivamente pois atualmente o Julia não
# faz Tail Call Elimination (https://github.com/JuliaLang/julia/issues/4964).
function fibonacci(n::BigInt)::Array{BigInt}
    if n > 0
        sequence::Array{BigInt} = [0, 1]
        while length(sequence) < n
            sequence = push!(sequence, sequence[end] + sequence[end - 1])
        end
        return sequence[1:n]
    else
        return []
    end
end

function main()
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

    @printf("O número %d é %s\n", number, is_even(number) ? "par" : "ímpar")
    if number > 0
        @printf("Os %d primeiros elementos da sequência de fibonacci são:\n", number)
        for i in fibonacci(number)
            @printf("%d, ", i)
        end
        @printf("\b\b.\n");
    end
end

main()

end # Module
