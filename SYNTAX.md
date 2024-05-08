# Syntax of ViteSharp programming language 

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
var intger: i32 = 256
var float: f64 = 256
```


### Dynamic types
Nev supports also dynamic types but not recommended to use it. and it is added to introp some languages. you can use it by `let` keyword and it doesn't works in FormalChecks mode
For example: 
```nev
let i = "name"
i = 5
```

<details>
<summary>str</summary>

## str and its functions


</details>
</details>
