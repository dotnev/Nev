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

at first i should say the Extension of ViteSharp lang is vs/🚀
<details>
<summary>Variables</summary>

## Variables and Data types

let's start by how to declare a type
there is 2 ways
first:
```vs
datatype name = value // mutable
const datatype name = value // immutable
```
second:
```vs
let name = value // mutable
const name = value // immutable
```
u can make mutable variables nullable by add ? after datatype or let in second declaration way:
```vs
let? name = "youssefully";
u8? age = 23
```

ViteSharp support some basic types of data types

let's start with numeric types
| Signed | Unsigned | Float  | Complex      | Length  |
| ------ | -------- | ------ | ------------ | ------- |
| `i8`   | `u8`     | ...... | ............ | 1-byte  |
| `i16`  | `u16`    | `f16`  | ............ | 2-byte  |
| `i32`  | `u32`    | `f32`  | `complex32`  | 4-byte  |
| `i64`  | `u64`    | `f64`  | `complex64`  | 8-byte  |

there also numeric type is `num` that is easy to use and when u declare number with second declaretion way u declare a `num`

Other Types is
| Type   | Length |
| ------ | ------ |
| `str`  | auto   |
| `char` | 1-byte |
| `bool` | 1-bit  |

Examples:
```vs
i32 intger = 256
let dog = animal('bopy')
```
> [!WARNING]  
> if u turned FormalChecks from settings on u wont be able to declare mutable with second way(it recommended for classes and immutable variables) but if not `let float = 250.52f64` because code should look more clear

<details>
<summary>str</summary>

## str and its functions

</details>
</details>
