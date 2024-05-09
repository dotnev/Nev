# Syntax of NEV programming language 

let's start with default project settings which is in `program.yaml`
```yaml
Name: test
Type: App
Backend: TCC
OS: windows
OptimizationPreference: Speed
OutJournal: RPF
ModulesHiring: ByFolder
GlobalOpen:
 - Pixel
 - Http
 - Pigeon
CompileLibraries:
 - Liberate
 - SpaghettiMaker
 - MathOptimizer
Syntax:
 XMLDeclaration: true
 SyntaxChecks: FormalChecks
```
We'll know what is every property equal but every thing we'll know in it's time

at first i should say the Extension of nevlang is nev/nv.
<details>
<summary>Variables</summary>

## Variables and Data types
nev supports a big range of variables types let's learn it


### Read-Only variables
Nevlang is immutable by default so let's start with immutable variables
To declare an immutable variable u should use `val` keyword and it refrence to "value"
For example:
```nev
val fingers = 5  // There are 5 finger in every hand
val legs = 2     // Every human has 2 legs
```


### Mutable variables
You should declare any variables immutable using `val` but only if necessary use `var` keyword to make it mutable
For example:
```nev
var customers = 77   // There are mutable number of customers
var contributors = 2   // There are mutable number of contributors
```


#### Nullable variables
Nev is null safety programming language to declare nullable mutable variable u should use `?` after datatype or `var` keyword if you didn't set a variable type
For example:
```nev
var age: u8? = 25
var? name = "ahmed"
```


### Datatypes
Nev support a range of types of variables.

So let's start with easy and simple types that the compiler will specify the type of variables to it if u didn't
| Type   | Length |
| ------ | ------ |
| `num`  | auto   |
| `str`  | auto   |
| `char` | 1-byte |
| `bool` | 1-bit  |

`num` type isn't performance choice and it makes calculations slow and `FormalChecks` mode will warn you if you used it so let's start with static-length numeric types
| Signed | Unsigned | Float  | Complex      | Length  |
| ------ | -------- | ------ | ------------ | ------- |
| `i8`   | `u8`     | ...... | ............ | 1-byte  |
| `i16`  | `u16`    | `f16`  | ............ | 2-byte  |
| `i32`  | `u32`    | `f32`  | `complex32`  | 4-byte  |
| `i64`  | `u64`    | `f64`  | `complex64`  | 8-byte  |


To specify the type of the variable you should write it after color that is after the variable's name.
For examples:
```nev
val intger: i32 = 256
val float: f64 = 256
```


### Dynamic types
Nev supports also dynamic types but not recommended to use it. and it is added to introp some languages. you can use it by `let` keyword and it doesn't works in FormalChecks mode
For example: 
```nev
let i = "name"
i = 5
```

<details>
<summary>String</summary>

### str and its functions

</details>

</details>


<details>
<summary>Functional Programming</summary>

## Functions and FP
Nev supports a range of FP features lets know it together

### Functions
Functions in Nev is a block of code that performs a specific task. Functions are used to modularize and reuse code, as well as to improve the readability and structure of a program.
Declare functions is easy like datatypes declaration but the different u use `fun` keyword instead of `val`/`var` and after name or type of function you don't use equal sign and just write function value or `scope`

#### How to declare a scope
There is a 2 types of scope in nev the first one wich is curly-brackets scope and the second one is single-line scope using `->` and if you using that scope in function that return a value you will write a value directly after `->` without `return` keyword. 

#### How to declare a function
The syntax of declare a function is 
fun `keyword` + name of function + scope
and you can specify arguments and type of function using type color after function name than type than arguments between brackets like
`fun + function_name + : + function_type + ( + arguments + ) + scope`
For Example:
```nev
fun number: i32 -> 50
fun double: i32(x: i32) -> x * 2
fun sum: i32(x: i32, y: i32) -> x + y
fun main {
    print_line(number())
    print_line(double(number()))
    print_line(double(number()), number())
}
```
output:
```
50
100
150
```
Note that should know that `fun + name of function + colon + function type + open bracket + arguments + close bracket` if the type and name of function or variable and scope is a value of it.

#### Anonymous functions & Closures
Anonymous functions: that is normal functions that can be declared in another functions.
Closures: This means that anonymous functions can inherit variables from the scope they were created in.
For example:
```nev
fun main {
    var arr = [1, 2, 3]
    fun add_nomber: (x: i32) -> arr << x
    val len = arr.len
    repeat i, 10 - len {
        add_nomber(i + len)
    }
    arr.for_each(x => print(x + ' '))
}
```
output:
``` 1 2 3 4 5 6 7 8 9 10 ```

### Higher-order functions
In functional programming, a higher-order function is a function that can accept other functions as arguments, return functions, or both. They enable abstraction, composition, and the creation of more flexible and reusable code.

#### Function as an Argument
This approach involves passing a function (callback) as an argument to another function.The receiving function can then execute the callback, enabling flexible and customizable behavior.
For example:
```nev
fun print_output: (fun fn: i32(i32), val: i32) { 
    print(`The output is: ${fn(val)}`); 
} 
  
fun square: i32(x: i32) -> x * x

fun main -> print_output(square, 5)
```
output:
```
25
```

#### Functions as Return Values
Higher-order functions can also return new functions. This is often used for creating specialized functions or closures. For instance, you can create a function factory that generates functions with specific behavior.
For example:
```nev
fun multiplier: fun(f: i32) ->
	fun (x: i32) {
		return x * f
	}

fun main {
    fun double = multiplier(2)
    fun triple = multiplier(3)

    print_line(double(5));
    print_line(triple(5));
}
```
output:
```
10
15
```
</details>
