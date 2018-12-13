#= Julia includes a type for represnting complex numbers
The global identifier im is used to represent the imaginary
coefficient. =#

a = 2 + 5im # The multiplication between 5 and im is implied
			# in the fashion of litteral numeric coefficients
println(a)

#= It is to be noted that Complex{T} it as parametric type
an,d is based on a numeric type T =#

b = 1 + 2im
println(typeof(b))

#= As such, Julia's type promotion ensures that the type
changes and is consistent at all times according to the
operations carried out on the variables =#

c = b + 0.5
println(c)
println(typeof(c))

#= Be careful with fraction coeficients, given that Litteral
Numeric Coefficient have more precedence than div operations,
1/2im will be parsed as 1/(2im) and not (1/2)im, it can
yield unexpected results =#

d = 1 + 1/2im
println(d)


#= Julia implements basic functions on complex numbers,
such as modulus (abs), argument (angle) and others =#
println(real(b))
println(imag(b))
println(conj(b))
println(abs(b))
println(abs2(b))
println(angle(b)) # in radians

#= Other mathematical functions apply to complex numbers
as well =#
println(√b)
println(cos(b))
println(exp(b))

#= Be careful though, functions that apply to different
domains when applied to real and complex will not behave
the same when given float and complex arguments =#
# √(-1) Will raise an error
println(√(-1 + 0im)) # Works well


#= When defining a complex number using already defined
real-valued variables, it is preferable (more efficient)
to use the complex(a, b) function rather than explicitely 
writing a + b*im =#
e = 5
f = 7.3
g = complex(e, f)
println(g)