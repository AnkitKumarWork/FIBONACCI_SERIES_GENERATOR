# Fibonacci Sequence Generator

## Project Overview
This project involves the design and implementation of a Fibonacci sequence generator using Verilog. The module generates Fibonacci numbers sequentially, starting from 0 and 1. The design is implemented to operate on an FPGA and can be used for various applications that require Fibonacci number generation.

## Design Specifications
- **Clock Input (`clk`):** The clock signal that drives the sequential logic.
- **Reset Input (`rst`):** Resets the Fibonacci sequence to the initial values.
- **Enable Input (`enable`):** Enables the Fibonacci sequence generation.
- **Output Registers:**
  - **`num1` (32-bit):** Holds the current Fibonacci number.
  - **`num2` (32-bit):** Holds the next Fibonacci number.
  - **`fib_out` (32-bit):** The output Fibonacci number, which is the sum of `num1` and `num2`.
  - **`count` (6-bit):** Counts the number of Fibonacci numbers generated.
  - **`done` (1-bit):** Indicates when the sequence generation is complete (after 20 numbers).

## Module Description
### fibonacci_generator
The `fibonacci_generator` module generates Fibonacci numbers sequentially. It uses a clock signal to drive the sequential logic and a reset signal to initialize the sequence. The enable signal allows the sequence generation to start or stop. The module outputs the current Fibonacci number, the next Fibonacci number, and the sum of these two numbers as the Fibonacci output. It also includes a counter to keep track of the number of Fibonacci numbers generated and a done signal to indicate when the sequence generation is complete.

### Inputs
- **`clk` (input):** The clock signal that drives the sequential logic.
- **`rst` (input):** Resets the Fibonacci sequence to the initial values.
- **`enable` (input):** Enables the Fibonacci sequence generation.

### Outputs
- **`num1` (output reg):** Holds the current Fibonacci number.
- **`num2` (output reg):** Holds the next Fibonacci number.
- **`fib_out` (output):** The output Fibonacci number, which is the sum of `num1` and `num2`.
- **`count` (output reg):** Counts the number of Fibonacci numbers generated.
- **`done` (output reg):** Indicates when the sequence generation is complete (after 20 numbers).

## Theory Behind Fibonacci Sequence
The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones, usually starting with 0 and 1. The sequence goes as follows: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, and so on. Mathematically, the Fibonacci sequence is defined by the recurrence relation:


![image](https://github.com/user-attachments/assets/dabd4fa2-a66a-4db2-a454-38d4f12b4898)



### Algorithm
The algorithm to generate the Fibonacci sequence involves the following steps:
1. **Initialization:** Start with the first two numbers of the sequence, 0 and 1.
2. **Iteration:** For each subsequent number, calculate the sum of the previous two numbers.
3. **Update:** Update the previous two numbers to the last two numbers generated.
4. **Repeat:** Continue the process until the desired number of Fibonacci numbers is generated.

In the Verilog implementation, this process is achieved using a clock-driven sequential logic. The `num1` and `num2` registers hold the last two Fibonacci numbers, and the `fib_out` output is the sum of these two numbers. The `count` register keeps track of how many Fibonacci numbers have been generated, and the `done` signal indicates when the sequence generation is complete.

## Getting Started
To get started with the project, follow these steps:
1. Clone the repository to your local machine.
2. Open the project in your preferred Verilog development environment.
3. Review the module file (`fibonacci_generator.v`) and ensure all dependencies are included.
4. Compile and simulate the design to verify its functionality.
5. Implement the design on an FPGA to test it in a real-world scenario.

## Contributing
If you would like to contribute to this project, please fork the repository and submit a pull request with your changes. Ensure that your code follows the project's coding standards and includes appropriate documentation.

## Contact
For any questions or inquiries, please contact [Your Name] at [Your Email].
