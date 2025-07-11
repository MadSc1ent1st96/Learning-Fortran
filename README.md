# Fortran Learning Journey

This repository documents my 7-day learning journey in Fortran. The code examples are designed to be clear and interpretable for anyone new to Fortran but already familiar with another programming language.

---

## 🗓️ 7-Day Fortran Plan & Daily Questions

### 🟩 Day 1 – Basics & Data Types
**Concepts:** print, read, integer, real, character, logical, operators, program, end, implicit none

**Questions:**
1. Print your name, age, and a welcome message.
2. Take radius input from user and compute the area of a circle.
3. Accept a number and check whether it is even or odd.
4. Define integer, real, and character variables and display them with labeled output.
5. Perform and print results of arithmetic operations between two real numbers.
6. Use logical operations (.and., .or., .not.) to check if a number lies between two values.
7. Declare a constant for π and use it to calculate volume of a sphere.
8. Try an invalid operation (like adding a string to a number) and observe the error.
9. Read a name from user and print “Hello, [name]!”.
10. Create a program with uninitialized variables and explain the difference when you use implicit none.

### 🟩 Day 2 – Control Flow & Arrays
**Concepts:** if, else if, do loops, select case, 1D/2D arrays, bounds, indexing

**Questions:**
1. Check whether a number is positive, negative, or zero.
2. Print the first 10 natural numbers using a do loop.
3. Print a multiplication table (1 to 10) using nested loops.
4. Use select case to assign grades based on marks.
5. Declare and initialize an integer array of size 5, then print it.
6. Take 5 numbers as input and calculate their sum and average.
7. Implement a simple linear search in an array.
8. Store a 3×3 matrix and display its transpose.
9. Find the largest element in an array.
10. Fill a 2D array with a(i,j) = i*j and print it in tabular form.

### 🟩 Day 3 – Subroutines & Functions
**Concepts:** function, subroutine, intent, call, modules, contains

**Questions:**
1. Write a function to compute factorial of a number.
2. Write a subroutine that takes two numbers and swaps them.
3. Write a function that returns the square of a number.
4. Define a module with a constant g = 9.8 and use it in a program to compute free fall.
5. Create a module with a subroutine that prints a welcome banner.
6. Use intent(in) and intent(out) in a subroutine that calculates area and perimeter of a rectangle.
7. Write a subroutine that normalizes a vector of 3 elements.
8. Create a function that returns the nth Fibonacci number.
9. Combine a module + subroutine + main program that simulates projectile motion.
10. Use a contains section to include an internal function.

### 🟩 Day 4 – File I/O
**Concepts:** open, read, write, close, status, formatted and unformatted output

**Questions:**
1. Write a program that writes a list of numbers to a file.
2. Read a file of 10 numbers and compute their mean.
3. Write to a file in formatted output (e.g., 2 decimals).
4. Use status='replace' to overwrite an existing file.
5. Open a file for appending and add a new line.
6. Read and display line-by-line from a file.
7. Write a 5x5 matrix to a file and then read it back.
8. Add column headers and units in your output file.
9. Implement file error checking using iostat.
10. Read in a dataset where values are comma-separated (CSV-style parsing using read).

### 🟩 Day 5 – Numerical Methods
**Concepts:** integration, differentiation, root-finding, basic matrix operations

**Questions:**
1. Compute the derivative of f(x) = x² using finite differences.
2. Implement the trapezoidal rule for ∫₀¹ x² dx.
3. Solve x² - 4 = 0 using bisection method.
4. Code Euler’s method for dy/dx = -y, y(0) = 1.
5. Write a subroutine to perform matrix multiplication.
6. Create a function that returns determinant of a 2x2 matrix.
7. Solve a linear system Ax = b using Gauss elimination (3x3).
8. Plot output of integration or solution using file+Python.
9. Compare accuracy of trapezoidal vs midpoint rule.
10. Model the motion of a falling object with air drag.

### 🟩 Day 6 – Legacy FORTRAN 77
**Concepts:** fixed-format, labels, goto, dimension, common, data, equivalence

**Note:** No files available for this day.

### 🟩 Day 7 – Integration + Python + Mini Project
**Concepts:** modularity, f2py, full program design

**Possible Tasks:**
- Simulate projectile motion and write results to a file.
- Call a Fortran subroutine from Python (via f2py).
- Modularize numerical solvers into reusable modules.
- Create output files for plotting with Python/matplotlib.
- Simulate population growth with logistic equation.
- Solve and log the Lorenz equations (RK2, simplified).
- Simulate binary star system motion.
- Compare performance of Fortran vs Python code.
- Final mini-project: Combine modules, subroutines, and I/O to simulate a physical system.

---

## 📁 Directory Structure

Fortran/
├── day1.f90          # Basics & Data Types \n
├── day2.f90          # Control Flow & Arrays
├── day3.f90          # Subroutines & Functions
├── day4.f90          # File I/O
├── day5.f90          # Numerical Methods overview
├── day7.f90          # Integration & Mini Project
└── Day 5/            # Detailed numerical methods
    ├── question1.f90 # Finite differences
    ├── question2.f90 # Trapezoidal rule
    └── [8 more question files]


- Each `dayN.f90` file contains the main concepts and practice codes for that day.
- The `Day 5/` folder contains extended codes and detailed solutions for the 10 numerical questions tackled on Day 5.
- **Note:** Day 6 files are not available.

---

## 🚀 How to Use

- Browse the code files for each day's topics and questions.
- Each file is commented for clarity and learning.
- Run the codes with any standard Fortran compiler (e.g., `gfortran`).

---

## 📄 License

This repository is licensed under the MIT License.

---

## 🤝 Contributions

Suggestions, corrections, or questions are welcome—feel free to open an issue or pull request.
