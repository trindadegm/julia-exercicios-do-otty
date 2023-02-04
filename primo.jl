module Primo

using Printf

function is_prime(n::BigInt)::Bool
    n::BigInt = abs(n)
    if n < 2
        false
    else
        max = convert(BigInt, floor(sqrt(n)))
        for i in 2:max
            if n % i == 0
                return false
            end
        end
        true
    end
end

include("num_cli.jl")

number = NumCli.get_integer_from_args()
@printf("O número %d %s primo\n", number, is_prime(number) ? "é" : "não é")

end # Module