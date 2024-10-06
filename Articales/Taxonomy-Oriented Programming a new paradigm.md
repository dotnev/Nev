# **Taxonomy-Oriented Programming (TOP): A New Paradigm**

At the start i should say I'm a non-junior programmer but I'm at least a programmer, And I'm called amir.
Well the idea started from my pursuit of safety, performance, and clarity. After some research we came up with **Taxonomy-Oriented Programming (TOP)** as a new paradigm that reorganize how we structure and interact with code. TOP integrates powerful concepts some from functional programming and data oriented programming to create a more efficient and expressive coding experience. This article explores the principles of TOP, its core concepts.


### **What Is Taxonomy-Oriented Programming?**
Taxonomy-Oriented Programming is a paradigm that emphasizesthe use of **Kind** and **Type** as fundamental building blocks for software design. Unlike traditional OOP, which often relies on classes and inheritance, TOP eliminates these complexities infavor of a more modular and efficient approach.

TOP supports generics, extensive use of polymorphism, promotes immutability, better ways to function calls, and forgoes inheritance, paving the way for a new level of code clarity and performance. By focusing on `Types` and `Kinds`, developers can create more maintainable and performant applications without the pitfalls associated with classic OOP designs.

### **Core Concepts of Taxonomy-Oriented Programming**

#### **1. Kind: The Cornerstone of TOP**
In TOP, a `Kind` serves as a foundational concept, akin to a class in OOP, but with some advantages:
- **Performance**: In **Kinds** the overhead of calling functions is minimized unlike classes in OOP(which has overhead).
- **Generic**: Kinds can be generic, allowing for flexible code reuse.
**Example:**
```nev
Collection[T] :: Kind {
    _values: [T: 255]
    set_item :: (index: u8, value: T) => _values[index] = value
}

main :: {
    members := Collection[str[20]]
    // u can add string up to 20 character
    members.set(1, "ali")
}

```
- **No Inheritance**: TOP eliminates inheritance in favor of composition and traits, reducing complexity and avoiding [oop issues](https://30dayscoding.com/blog/limitations-of-inheritance-in-oop).
- **Polymorphism & Param**: `The Kinds` supports polymorphism and parameters.
**Example:**
```nev
Arr[len: i32] :: Kind {} // static array
Arr :: Kind {} // dynamic array

ColorFormat :: Param {
    rgp
    rgpa
}
Color[ColorFormat.rgp] :: Type {
    r, g, b: u8
}
Color[ColorFormat.rgpa] :: Type {
    r, g, b, a: u8
}

```

By structuring the program around kinds, TOP ensures that the code remains efficient and easy to understand.

#### **2. Modules: Organizing Code for Clarity**
**Modules** in TOP provide a way to organize code into cohesive units. They encapsulate kinds, types, functions, and traits, promoting better code organization and separation of concerns. This modular approach allows for easier collaboration, testing, and maintenance.
- **Encapsulation**: Modules encapsulate related functionality, preventing naming collisions and enhancing code readability.
- **Reusability**: Code within modules can be easily reused across different projects, reducing duplication and fostering modular design.

**Example:**
```nev
use nev:cli
module geometry {
    Circle :: Kind {
        radius: f64
        calculate_area :: f64 => 3.14 * radius ^ 2
    }
}

// Using the Geometry module
use geometry

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

In Nev, **traits** act as blueprints for behavior. They define a set of methods that a `Kind` must implement to conform to the trait's contract. This allows you to create flexible and reusable code by defining shared behavior without the need for inheritance.

**Key Benefits:**

- **Decoupling:** Traits can be independent of the types that implement them, promoting modularity and reusability.
- **Polymorphism:** Traits enable polymorphic behavior, where different `Kinds` can be treated as the same interface, making your code more flexible and adaptable.

**Example:**

```nev
Animal :: Trait {
    speak :: ()
}

Dog :: Kind {}
// Implementing the trait for a type
Dog <- Animal {
    speak :: {
        cli.print("Woof!": line)
    }
}

Cat :: Kind {}
// Implementing the trait for a type
Cat <- Animal {
    speak :: {
        cli.print("Meow!": line)
    }
}

main :: {
    dog := Dog
    cat := Cat

    dog.speak
    cat.speak
}
```
Traits enable developers to build extensible systems without the complexities introduced by inheritance.

#### **4. Generics: Type Safety and Flexibility**
Generics in TOP allow `kinds`, `types`, `traits`, and `functions` to operate on various data types while maintaining strict type safety. This feature promotes code reuse without sacrificing performance or clarity.
- **Compile-Time Resolution**: Generics are resolved at compile time, eliminating any runtime overhead.
- **Type Constraints**: Developers can enforce constraints on generic types, ensuring type safety.

**Example:**
```nev
// Generic function example
swap[T] :: T, T(a: T, b: T) {
    return (b, a)
}

// Using the generic function
main :: {
    a, b := swap(1, 2) // Works for integers
    x, y := swap("hello", "world") // Works for strings
}
```

Generics empower developers to write flexible and reusable code while ensuring type safety.

#### **5. Type and Param: Enhancing Readability and Optimization**
TOP integrates `type` which is Algebraic data type, allowing developers to define variant kinds that enhance code clarity and efficiency. 
Param can serve as function parameters, making the code more expressive and easier to read and some time much performance.
- **Logical Code**: `Type` is used as tagged unions/algebraic data type, which make code more safer and logical.
- **Readable Code**: Using param as parameters increases code readability and intent, allowing for clearer function signatures.

**Example:**
```nev
WriteMessageParam :: Param(str) {
    _text
    line
}

write :: (message: WriteMessageParam) {
    when message {
        is text => print(message)
        is line => print(message + "\n")
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

main :: {
    mut x := 50

    add_x :: (y: i32, x) => x + y
    square :: (x: i32) => x ^ 2

    cli.print(add_x(run(5, square)))
    // output: 75
}
```

Functional programming principles help developers create robust and maintainable applications.

### **Why Taxonomy-Oriented Programming Matters**
Taxonomy-Oriented Programming represents a significant advancement in software development, offering a robust framework for creating high-performance, safe, and maintainable applications. By focusing on types, modules, traits, generics, enums, and functional programming, TOP equips developers with the tools to write clean, efficient, and expressive code.

In a world where performance and safety are paramount, TOP provides an innovative solution. It reduces the complexities of traditional OOP, promotes better code organization, and leverages modern programming techniques to produce high-quality software.

If you're a developer seeking to enhance your coding practices and deliver robust applications, consider embracing Taxonomy-Oriented Programming. It offers a fresh perspective that balances the power of abstraction with the need for performance and clarity, making it a compelling choice for the future of software development.
