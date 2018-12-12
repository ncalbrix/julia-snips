#= Basic arithmetic operations : 
a + b
a - b
a * b
a / b
a ÷ b (euclidean division, a \div b or div(a, b))
a % b (modulo, rem(a, b) or mod(a, b))
a \ b (inverse divide, = b / a)
a ^ b (power)
!a (boolean negation)

Bitwise operators : 
~a (not)
a & b (and)
a | b (or)
a ⊻ b (xor, type \xor, or use xor(a, b))
a >>> b (logical shift)
a >> (arithmetic shift)
a << b (logical/arithmetic shift) =#

println(true ⊻ false)


#= Updating operators : 
Update the value of a variable using an operator
with the = sign next to it =#

a = 5
a += 3
println(a)

b = false
b ⊻= true
println(b)

# Careful, when updating a value, its type might change

c = Int8(5)
c += 4
println(typeof(c)) # Int32 or Int64, given the default Int type

d = Int8(5)
d += Int8(4)
println(typeof(d)) # Int8


#= Vectorized operators
Operators can be vectorized, i.e. applied to an array, with
the dot operator syntax =#

e = [1, 2, 3] .* 5 # applies * 5 to each element of the array
println(e)

#= Dot operators can be applied to arrays of same size, resulting
in element-vise operation =#

f = [1, 2, 3] .+ [4, 5, 6]
println(f)

#= They can also be applied to elements of different size (e.g
matrix product) and to user-defined operators, without
additional code.