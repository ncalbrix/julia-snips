# One-line comments are Python style
#= Multi
Line
Comment =#

# Variables van be assigned, updated, and change type
# Check the type of a variable if the typeof function

x = 5
println(x)
println(typeof(x))

x = x + 7
println(x)
println(typeof(x))

x = "Yolo"
println(x)
println(typeof(x))


#= Strings can contain unicode characters, as well as 
variable identifiers.
Commonly, special characters like greek letters can be
written in Julia and other environments set for Julia
using their LaTeX code.
This can be used to write complex characters formed by
multiple characters. =#

y = "δ"
println(y)

δ = 0.001
println(δ)

α² = 5
print("α² = ")
println(α²)


#= The Julia style guide recommends to use all-lowercase
or snake-case for variables, all-lowercase for functions,
upper CamelCase for modules and types. 
It may be more appropriate to use snake-case for function
identifiers, as some can be long and unreadable. =#