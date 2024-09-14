```nev
open Console as cmd

fun run: (v: i32, f: fun(i32)i32)i32 => f(v)

fun main {
    val x: i32 = 50

    fun add_x: (y: i32)i32 => x + y

    fun square: (x: i32)i32 => x ^ 2

    cmd.print(add_x(run(5, square)): ln)
}
```
Or
```nev
open Console as cmd

fn run(v: i32, f: fn(i32)i32)i32 -> f(v)

fn main() {
    x := i32(50)

    fn add_x(y: i32)i32 -> x + y

    fn square(x: i32)i32 -> x ^ 2

    cmd.print(ln(add_x(run(5, square))))
}
```
Or
```nev
open Console as cmd

run:(v i32, f (i32)i32)i32 -> f(v)

main: {
    x := i32(50)

    add_x:(y i32)i32 -> x + y

    square:(x i32)i32 -> x ^ 2

    cmd.print(ln(add_x(run(5, square))))
}
```
