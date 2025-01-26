# Modula-2 Hello World Example

This example demonstrates a Modula-2 implementation of "Hello, World!" using the GNU Modula-2 compiler. Modula-2, designed by Niklaus Wirth in 1977, represents an important step in the evolution of programming languages, particularly in the development of module systems and type safety.

## Historical Context and Significance

Modula-2 emerged from Wirth's experience with Pascal and the needs of systems programming. The name "Modula" comes from "modular programming," highlighting one of its key innovations. Understanding Modula-2 helps us see the evolution of several important programming concepts:

The module system that Modula-2 introduced influenced many later languages:
- Ada's package system
- Go's package system and explicit imports
- Rust's module system and visibility rules
- Python's import system

Modula-2's strict type safety and separation of interface from implementation were ahead of their time and can be seen reflected in modern languages:
- Java's interface/implementation separation
- Go's emphasis on explicit type conversion
- Rust's strict type system and module boundaries

## Prerequisites

We'll use the GNU Modula-2 compiler (gm2), which is part of GCC:

### Linux
On Debian/Ubuntu:
```bash
sudo apt update
sudo apt install gm2
```

On Fedora:
```bash
sudo dnf install gcc-gm2
```

### macOS
Using Homebrew:
```bash
brew install gcc
```
This installs GCC with GM2 support.

### Windows
GNU Modula-2 can be built as part of MinGW-w64, but it's recommended to use WSL (Windows Subsystem for Linux) and follow the Linux installation instructions.

## Compiling

Modula-2 compilation involves several steps, but the GM2 compiler handles them automatically:

### Linux and macOS
```bash
gm2 hello.mod -o hello
```

### Windows (via WSL)
```bash
gm2 hello.mod -o hello.exe
```

## Running

### Linux and macOS
```bash
./hello
```

### Windows
```cmd
hello.exe
```
Or from PowerShell:
```powershell
.\hello.exe
```

## Understanding the Code

Let's examine our Modula-2 implementation in detail:

```modula2
MODULE Hello;

FROM InOut IMPORT
  WriteLn,
  WriteString;

BEGIN
  WriteString("Hello, World!");
  WriteLn
END Hello.
```

This simple program demonstrates several key Modula-2 concepts:

1. Module System
   - The MODULE declaration creates a new module
   - The module name must match the filename
   - The END statement must repeat the module name
   This explicit naming helps prevent errors and makes dependencies clear.

2. Selective Imports
   - FROM InOut IMPORT selectively imports only needed items
   - This contrasts with Pascal's USES which imported everything
   - This precise control over imports influenced Go's import system

3. Procedure Calls
   - WriteString is a procedure (Modula-2's term for function)
   - Procedures are called without parentheses when there are no parameters
   - String literals use double quotes (unlike Pascal's single quotes)

4. Program Structure
   - The BEGIN...END block contains the executable code
   - Unlike Pascal, there's no program keyword
   - The module itself serves as the program container

## Modula-2's Design Principles

Modula-2 embodied several important design principles that influenced later languages:

1. Modularity
   - Separate compilation of modules
   - Clear interface/implementation separation
   - Explicit import of dependencies

2. Type Safety
   - Strong type checking
   - No implicit type conversions
   - Clear separation of types between modules

3. Systems Programming Features
   - Low-level machine access when needed
   - Efficient compiled code
   - Direct mapping to hardware features

## Verifying the Build

You can examine the compiled program:

### Linux
```bash
# Check binary size
ls -l hello
# Check dynamic dependencies
ldd hello
```

### macOS
```bash
# Check binary size
ls -l hello
# Check dynamic dependencies
otool -L hello
```

### Windows
```cmd
dir hello.exe
dumpbin /dependents hello.exe
```

## Further Reading

- "Programming in Modula-2" by Niklaus Wirth - The definitive book on the language
- "Modula-2 for Pascal Programmers" by Richard Gleaves
- [GNU Modula-2 Documentation](https://www.gnu.org/software/gm2/manual/)
- "Project Oberon" by Wirth and Gutknecht - Shows Modula-2's influence on later work

## Historical Impact

Modula-2's influence can be seen in many modern programming practices:
- Explicit imports and module systems
- Interface/implementation separation
- Strong type safety and explicit conversions
- Clear module boundaries and encapsulation

The language demonstrates how programming language design evolved to handle larger, more complex programs through better organization and stricter type safety.
