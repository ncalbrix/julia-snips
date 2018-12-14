#= Julia implements a type to represent rational
numbers, allowing to represent exact ratios of
integers, using a double slash // =#

a = 2//3
println(a)

# Ratios are automatically reduced when constructed

b = 5//15
println(b)

c = -6//-14
println(c)

#= The numerator and denominator of a rational number
can be accessed with the eponymous functions =#

println(numerator(c))
println(denominator(c))

#= Usual operations are defined for rational numbers,
and type promotion allows to seemlessly use them with
other types of numbers =#

println(a + 2)
println(a + 0.5)
println(2a + 1)
println(a > b)

#= To get the float approximation of a rational number, 
simply do float(x) =#
println(float(a))