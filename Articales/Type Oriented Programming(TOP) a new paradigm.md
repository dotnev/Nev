# **Type-Oriented Programming (TOP): A New Paradigm for Modern Development**

At the start i should say I'm a non-junior programmer but I'm at least a programmer, And I'm called amir.
Well the idea started from my pursuit of safety, performance, and clarity. After some research we came up with **Type-Oriented Programming (TOP)** as a new paradigm that reorganize how we structure and interact with code. TOP integrates powerful concepts some from functional programming or data oriented programming to create a more efficient and expressive coding experience. This article explores the principles of TOP, its core concepts.


### **What Is Type-Oriented Programming?**
Type-Oriented Programming is a paradigm that emphasizes the use of **types** as fundamental building blocks for software design. Unlike traditional OOP, which often relies on classes and inheritance, TOP eliminates these complexities in favor of a more modular and efficient approach. In TOP, types are defined in such a way that after compilation, they are optimized to ensure faster function calls and reduce overhead.

In this paradigm, types are not merely abstractions; they become the backbone of the program’s structure. TOP supports generics, promotes immutability, and forgoes inheritance, paving the way for a new level of code clarity and performance. By focusing on types, developers can create more maintainable and performant applications without the pitfalls associated with classic OOP designs.

### **Core Concepts of Type-Oriented Programming**

#### **1. Type: The Cornerstone of TOP**
In TOP, a **type** serves as a foundational concept, akin to a class in OOP, but with significant advantages:
- **Performance**: Types are compiled to efficient machine representations, ensuring faster function calls. With careful design, the overhead of calling functions is minimized.
- **Generic Support**: Types can be generic, allowing for flexible code reuse while maintaining strict type safety.
**Example:**
```nev
Collection :: type<T: Type> {
    _values: [T: 255]
    set_item :: (index: u8, value: T) => _values[index] = value
}

main :: {
    members := Collection<str<20>>
    members.set(1, "ali")
}

```
- **No Inheritance**: TOP eliminates inheritance in favor of composition, reducing complexity and avoiding issues related to fragile base classes.
- **Polymorphism & Param**: The types supports polymorphism and parameters.
**Example:**
```nev
Arr :: type<len: u32> {} // static array
Arr :: type {} // dynamic array

ColorFormat :: param {
    rgp
    rgpa
}
Color :: type<ColorFormat.rgp> {
    r, g, b: u8
}
Color :: type<ColorFormat.rgpa> {
    r, g, b, a: u8
}

```

**Example:**
```nev
// Defining a simple type in Nev
type Point {
    x: i32
    y: i32

    zero :: {
        x, y = 0, 0
    }
}

// Function using the Point type
calculate_distance :: (p1: Point, p2: Point) =>
    sqrt((p2.x - p1.x) ** 2 + (p2.y - p1.y) ** 2)
```

By structuring the program around types, TOP ensures that the code remains efficient and easy to understand.

#### **2. Modules: Organizing Code for Clarity**
**Modules** in TOP provide a way to organize code into cohesive units. They encapsulate types, functions, and traits, promoting better code organization and separation of concerns. This modular approach allows for easier collaboration, testing, and maintenance.
- **Encapsulation**: Modules encapsulate related functionality, preventing naming collisions and enhancing code readability.
- **Reusability**: Code within modules can be easily reused across different projects, reducing duplication and fostering modular design.

**Example:**
```nev
open nev:cli
module geometry {
    type Circle {
        radius: f64
        calculate_area :: f64 => 3.14 * radius ** 2
    }
}

// Using the Geometry module
open geometry

main :: {
    my_circle := geometry.Circle {
        radius = 5.0
    }
    area := my_circle.calculate_area
    cli.print(area)
}
```

By leveraging modules, developers can create structured and maintainable codebases.

#### **3. Trait: A Blueprint for Behavior**

In Nev, **traits** act as blueprints for behavior. They define a set of methods that a type must implement to conform to the trait's contract. This allows you to create flexible and reusable code by defining shared behavior without the need for inheritance.

**Key Benefits:**

- **Decoupling:** Traits are independent of the types that implement them, promoting modularity and reusability.
- **Polymorphism:** Traits enable polymorphic behavior, where different types can be treated as the same interface, making your code more flexible and adaptable.
- **Compile-Time Safety:** Nev's strong type system ensures that trait implementations are checked at compile time, preventing runtime errors and improving code reliability.

**Example:**

```nev
trait Animal {
    speak :: (me)
}

type Dog {}
// Implementing the trait for a type
Dog <- Animal {
    speak :: {
        cli.print("Woof!": line)
    }
}

type Cat {}
// Implementing the trait for a type
Cat <- Animal {
    speak :: {
        cli.print("Meow!": line)
    }
}

main :: {
    dog := Dog
    cat := Cat

    dog.speak()
    cat.speak()
}
```
Traits enable developers to build extensible systems without the complexities introduced by inheritance.

#### **4. Generics: Type Safety and Flexibility**
Generics in TOP allow functions and types to operate on various data types while maintaining strict type safety. This feature promotes code reuse without sacrificing performance or clarity.
- **Compile-Time Resolution**: Generics are resolved at compile time, eliminating any runtime overhead.
- **Type Constraints**: Developers can enforce constraints on generic types, ensuring type safety.

**Example:**
```nev
// Generic function example
swap :: <T>T, T|a: T, b: T| {
    return (b, a)
}

// Using the generic function
main :: {
    a, b := swap(1, 2) // Works for integers
    x, y := swap("hello", "world") // Works for strings
}
```

Generics empower developers to write flexible and reusable code while ensuring type safety.

#### **5. Enum and Param: Enhancing Readability and Optimization**
TOP integrates **enums** and tagged unions, allowing developers to define variant types that enhance code clarity and efficiency. Param can serve as function parameters, making the code more expressive and easier to read.
- **Tagged Unions**: Enums can be used as tagged unions, enabling more straightforward pattern matching and improved optimization during compilation.
- **Readable Code**: Using param as parameters increases code readability and intent, allowing for clearer function signatures.

**Example:**
```nev
param WriteMessageParam: str | _text | line

write :: (message: WriteMessageParam) {
    match message.type {
        == .text => print(message)
        == .line => print(message + "\n")
    }
}

main :: {
    write("Hello,")
    write("World!": line)
}
```

This approach makes function calls clearer and optimizes code paths at compile time.

#### **6. Functional Programming: Immutability and Pure Functions**
TOP embraces **functional programming** principles, emphasizing immutability and pure functions to create predictable and maintainable code.
- **Immutability**: All data in TOP is immutable by default, reducing side effects and enhancing predictability.
- **Pure Functions**: Functions are encouraged to be pure, leading to easier testing and debugging.

**Example:**
```nev
open nev:cli


// higher-order Closures... functions example
run :: i32(v: i32, f: i32(i32)) => f(v)

main :: () {
    mut x := 50

    add_x :: (y: i32, x) => x + y
    square :: (x: i32) => x ^ 2

    cli.print(add_x(run(5, square)))
    // output: 75
}
```

Functional programming principles help developers create robust and maintainable applications.

### **Why Type-Oriented Programming Matters**
Type-Oriented Programming represents a significant advancement in software development, offering a robust framework for creating high-performance, safe, and maintainable applications. By focusing on types, modules, traits, generics, enums, and functional programming, TOP equips developers with the tools to write clean, efficient, and expressive code.

In a world where performance and safety are paramount, TOP provides an innovative solution. It reduces the complexities of traditional OOP, promotes better code organization, and leverages modern programming techniques to produce high-quality software.

If you're a developer seeking to enhance your coding practices and deliver robust applications, consider embracing Type-Oriented Programming. It offers a fresh perspective that balances the power of abstraction with the need for performance and clarity, making it a compelling choice for the future of software development.
