using Printf

include("num_cli.jl")

number = NumCli.get_integer_from_args()
if number < 0
    write(stderr, "Números negativos são inválidos")
    exit(1)
elseif number == 0
    # \(º v º)/ ~"Me very happy!"
    println("0")
    exit(0)
end

# Olha só o método revolucionário (e ineficiente e tonto e tals)
um_dicionário_no_julia_primeira_vez_que_estou_usando_man = Dict(
    '0' => "0000",
    '1' => "0001",
    '2' => "0010",
    '3' => "0011",
    '4' => "0100",
    '5' => "0101",
    '6' => "0110",
    '7' => "0111",
    '8' => "1000",
    '9' => "1001",
    'a' => "1010",
    'b' => "1011",
    'c' => "1100",
    'd' => "1101",
    'e' => "1110",
    'f' => "1111",
)

# HAHAHAHAHAHAHAHAHAHAHA
hex = @sprintf("%x", number)
for c in hex
    print(lstrip(um_dicionário_no_julia_primeira_vez_que_estou_usando_man[c], '0'))
end
println()
