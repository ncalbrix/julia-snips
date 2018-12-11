#= Wide number of types for representing integers and
floating-point numbers.
Julia also support Arbitrary Precision Arithmetics =#

#= Integer types : 
from Int8 and UInt8 to Int128 and UInt128
as well as Bool =#

#= Float types :
Float16 to Float64 =#

# Default type used for numbers are system dependant

# ------ Integers ------

# Default type for integers
println(typeof(1))

# Getting the system word size in bits
println(Sys.WORD_SIZE)

#= Type alias for default integers (signed and 
unsigned) according to the system word size,
so Int is Int32 or Int64 =#
println(Int)

#= Default type changes for integer values exceeding
the maximum or minimum of the default type =#
println(typeof(92233720368547758070))

#= Integer litterals can be written with binary,
octal or hexadecimal prefix notation. In this case,
the type of the value is determined by the number
of bytes necessary to store it.
These integer litteral produce only unsigned-type
values. =#
print("0xa5b56 = ")
println(0xa5b56)
println(typeof(0xa5b56))

print("0b1010111 = ")
println(0b1010111)
println(typeof(0b1010111))

# Computing the max and min values of a given type
print("typemax(Int) = ")
println(typemax(Int))

print("typemin(Int) = ")
println(typemin(Int))

# Overflows are usual
print("typemax(Int) + 1 = ")
println(typemax(Int) + 1)



# ------ Floats ------

# Default type for floats is Float64
# There is no abstract Float type
println(typeof(.5))

# Float litterals are standard
println(.5)
println(1.5e2)

# Float32 float litterals are declared with the 'f' letter
println(typeof(1.5f2))

# Type conversion
Float32(7)

# Underscores are digit separators, for clarity
println(1_000_000)

# Special value
print(Inf); print(" "); print(-Inf); print(" "); println(NaN)

# Gap between 1.0 and the next float value with eps(type)
# Gap between a float and the next one with eps(val)
println(eps(Float64))
println(eps(5.2))

# Next and previous floats with nextfloat, prevfloat
println(nextfloat(1.0))
println(prevfloat(1.0))


# ------ Arbitrary Precision ------

#= BigInt and BigFloat types allow for arbitrary precision
arithmetic =#

# They can be constructed with constructors
println(BigInt(197452731946324841398418589155418))
println(BigFloat(2.654789e102))

# Thay can also be constructed with the parse() function
println(parse(BigInt, "3049864110354891232104656565651640"))
println(parse(BigFloat, "1.000032048610480"))


# ------ Numeric Litteral Coefficients ------

#= You can in some case imply the multiplication between a
numeric litteral and a variable, or an expression between 
parenthesis =#

x = 5
println(2x + 7)
println((4x + 1)x)
println(4x^2 + 2x + 0.5)

#= Be careful about precedence : numeric litteral coefficient
have a lower precedence than unary operators, i.e. : 
-2x <=> (-2) * x
√2x <=> (√2) * x =#


# ------ Litteral Zeros and Ones ------

#= Get the zero and the one values for a
specific type T with the functions 
zero(T)
one(T) =#

println(zero(Float64))
println(one(Int))