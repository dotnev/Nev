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


<details>
<summary>Variables</summary>

let's start by how to declare a type
there is 2 ways
first(more formal for declare data types):
```vs
Type name = value
```
second(more formal for declare classes):
```vs
name := value
```

ViteSharp support some basic types of variables

let's start with numeric types
| Signed | Unsigned | Float  | Complex      | Length  |
| ------ | -------- | ------ | ------------ | ------- |
| `i8`   | `u8`     | ...... | ............ | 1-byte  |
| `i16`  | `u16`    | `f16`  | ............ | 2-byte  |
| `i32`  | `u32`    | `f32`  | `complex32`  | 4-byte  |
| `i64`  | `u64`    | `f64`  | `complex64`  | 8-byte  |
| `i128` | `u128`   | `f128` | `complex128` | 16-byte |

there also numeric type is `num` that is easu to use and when u declare number with second declaretion why u declare a `num`

Other Types is
| Type   | Length |
| ------ | ------ |
| `str`  | auto   |
| `char` | 1-byte |
| `bool` | 1-bit  |

Examples:
```vs
i32 intger = 256
dog := animal('bopy')
```
> [!WARNING]  
> if u turned FormalChecks from settings on u wont be able to declare data types with second way but if not
> `float := 250.52f64`

</details>
