#= Julia implements a character type, similar to C.
Julia supports basic ASCII handling for fast and simple
string and character processing, but also handles
unicode (UTF-8) characters and strings =#

# Character litterals are declared with single quotes

a = 'a'
println(a)
println(typeof(a))


# Chars can be converted to int and the other way round
println(Int(a))
println(Char(120))


#= Creating a char from an integer can yield an invalid
result (non-existing character), check with isvalid() =#
println(isvalid(Char, 6720000))


#= Character litterals can be created from hexadecimal
digits quickly using \u (up to four digits) or \U (up
to 8 digits) =#
b = '\u134'
c = '\Ub34e6'
println(b)
println(c)