function bits_to_number(bits)::BigInt
    sum(enumerate(reverse(bits)) .|> t -> t[2] == '1' ? 2^(t[1] - 1) : 0)
end

function main()
    binary_shenanigans = ""

    println("Please insert your binary shenanigans:")
    while true
        binary_shenanigans = readline()
        if all(c -> c == '0' || c == '1', binary_shenanigans)
            break
        else
            println("É binário. Tipo assim ó: 1010101010101101011111010101010101010110")
            println("Tendeu? Vai lá e faz de novo:")
        end
    end

    println("Taí teu resultado:")
    println(bits_to_number(binary_shenanigans))
end

main()
