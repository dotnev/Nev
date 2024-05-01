# Syntax of ViteSharp programming language

let's start with default project settings which is in `program.json`
```json
{
    "Name": "test",
    "Type": "App",
    "Backend": "TCC",
    "OS": "windows",
    "OptimizationPreference": "Speed",
    "OutJournal": "RPF",
    "ModulesHiring": "ByFolder",
    "GlobalOpen": [
       "Pixel",
       "Http",
       "Pigeon"
    ],
    "CompileLibraries": [
       "Liberate",
       "SpaghettiMaker",
       "MathOptimizer"
    ],
    "Syntax": {
       "XMLDeclaration": true,
       "SyntaxChecks": "FormalChecks"
    }
}
```
We'll know what is every property equal but every thing we'll know in it's time

## Variables
Numeric types
| Signed | Unsigned | Float  | Complex      | Length  |
| ------ | -------- | ------ | ------------ | ------- |
| `i8`   | `u8`     | ...... | ............ | 1-byte  |
| `i16`  | `u16`    | `f16`  | ............ | 2-byte  |
| `i32`  | `u32`    | `f32`  | `complex32`  | 4-byte  |
| `i64`  | `u64`    | `f64`  | `complex64`  | 8-byte  |
| `i128` | `u128`   | `f128` | `complex128` | 16-byte |


Other Types is
| Type   | Length |
| ------ | ------ |
| `str`  | auto   |
| `char` | 1-byte |
| `bool` | 1-bit  |


Then to declare a type there is a 2 ways
first(more formal for declare data types):
```vs
Type name = value
```
second(more formal for declare classes):
```vs
name := value
```




i := 5
f := 5.5f
int64 := 5i64
float64 := 5.5f64
u := 5u
uint64 := 5u64

s := "hello world"
c := 'c'
b := true


u8[] a = {1, 2, 3, 4, 5, 6, 7}
a := u8[]{1, 2, 3, 4, 5, 6, 7}
a := {1, 2, 3, 4, 5, 6, 7}
```