
! There are two ways to print something in fortran: Print and write
! The print statement is used to print to the console, while the write statement is used to write to a file or the console.
! The write statement is more flexible and can be used to format the output.
! Syntax: 
! print *, 'Hello, World!'
! write (*,*) 'Hello, World!'

!! ON IMPLICIT NONE:
! An uninitialized variable is a variable that has been declared but not given any value before it’s used. Using such a variable may lead to unpredictable behavior, because its value could be anything from memory (garbage data).
! By default, Fortran implicitly assigns a type to variables based on their first letter: 1) Variables starting with letters I, J, K, L, M, N, O, P are integers; 2) Variables starting with letters A, B, C, D, E, F, G, H are real numbers; 3) Variables starting with letters Q, R, S, T, U, V, W, X, Y, Z are double precision.
! so, if you write x = 5.0 without declaring x, Fortran will assume x is real.
! 'Implicit none' forces you to explicitly declare every variable. If you forget or misspell something, the compiler will throw an error

! Fortran is a high-level programming language that is particularly well-suited for numerical and scientific computing.
! It is one of the oldest programming languages still in use today, with its roots dating back to the 1950s.
! Fortran stands for "Formula Translation" and was originally designed for scientific and engineering calculations.
! The Fortran language is case Insensitive, meaning that keywords and variable names can be written in any combination of uppercase and lowercase letters.

! There are 5 built-in data types in Fortran:
! 1. Integer: Used to store whole numbers.
! 2. Real: Used to store floating-point numbers.
! 3. Double Precision: Used to store double-precision floating-point numbers.
! 4. Character: Used to store strings of characters.
! 5. Logical: Used to store boolean values (true or false).

! Declaring variables in Fortran:
! Syntax:
! type :: variable_name
! Example:
! integer :: x
! real :: y

! To start a Fortran program, we use the program statement followed by the program name.
! The program name should be unique and should not contain any spaces or special characters.
! The program statement is followed by the implicit none statement, which tells the compiler to not allow implicit typing of variables.
! The program is ended with the end program statement followed by the program name.
! This is similar to the main function in C/C++.



program hello_world
    ! implicit none

    ! print *, 'Hello, World via print!'
    ! This line prints "Hello, World!" to the console

    ! write(*,*) 'Hello, World via write!'
    ! write (*,*) 'This is a simple Fortran program that prints "Hello, World!" to the console.'

   ! REaL :: x
   ! INTEgEr :: y
   ! CHARACTER(len=20) :: name
   ! LOGICAL :: logic
   ! double precision :: z

   ! print *, 'Type the value of x as a real number: '
   ! read (*,*) x
   ! print *, 'Type the value of y as an Integer: '
   ! read (*,*) y
   ! print *, 'Type the value of z as a double precision: '
   ! read (*,*) z
   ! print *, 'Type the value of name as a character of length 20: '
   ! read (*,*) name
   ! print *, 'Type the value of logic: '
   ! read (*,*) logic  ! Can only be true or false
    ! logic = .false.

   ! write (*,*) 'You entered:', x  
   ! write (*,*) 'You entered:', y 
   ! write (*,*) 'You entered:', z  
   ! write (*,*) 'You entered:', logic  
   ! write (*,*) 'You entered:', name



    !! Question 1: Write a program to print your name, age, and a welcome message.
    
    ! print *, 'My name is Aniket Mishra.'
    ! print *, 'I am 19 years old.'
    ! print *, 'Welcome to Fortran!'

    !! Question 2: Take radius input from user and compute the area of a circle.

    ! rEAl :: radius
    ! print *, 'Enter the radius of the circle (in cm): '
    ! read (*,*) radius

    ! print *, 'The area of the circle is (in cm^2): ', 3.14 * radius**2

    !! Question 3: Accept a number and check whether it is even or odd.

    ! integer :: num
    ! print *, 'Enter a number: '
    ! read (*,*) num
    
    ! if (mod(num,2) == 0) then       !! mod(num,2) returns the remainder when num is divided by 2. In python, we would write if (num%2) == 0:
    !     print *, 'The number is even.'
    ! else
    !     print *, 'The number is odd.'
    ! end if

    !! Question 4 : Define integer, real, and character variables and display them with labeled output.

    ! integer :: int = 2
    ! real :: re = 3.14
    ! ! character :: char = 'Fortran'   **** This line will give the output of char as F, because the length of the character variable is not defined. ****
    ! character(len=7) :: char = 'Fortran' 

    ! print *, 'The value of the integer variable is: ', int
    ! print *, 'The value of the real variable is: ', re
    ! print *, 'The value of the character variable is: ', char

    !! Question 5: Perform and print results of arithmetic operations between two real numbers.

    ! real :: x, y

    ! print *, 'Enter two real numbers: '
    ! read(*,*) x, y
    ! print *, 'The sum of the two numbers is: ', x + y
    ! print *, 'The difference of the two numbers is: ', x - y
    ! print *, 'The product of the two numbers is: ', x * y
    ! print *, 'The quotient of the two numbers is: ', x / y
    ! print *, 'The modulus of the two numbers is: ', mod(x, y)
    ! print *, 'The power of the first number raised to the second number is: ', x ** y
    ! print *, 'The square root of the first and second number is: ', sqrt(x), sqrt(y), ' respectively.'
    ! print *, 'The logarithm of the first and second number is: ', log(x) , log(y), ' respectively.'
    ! print *, 'The exponential of the first and second number is: ', exp(x) , exp(y), ' respectively.'
    ! print *, 'The absolute value of the first and second number is: ', abs(x), abs(y), ' respectively.'
    ! print *, 'The sine of the first and second number is: ', sin(x), sin(y), ' respectively.'
    ! print *, 'The cosine of the first and second number is: ', cos(x), cos(y), ' respectively.'
    ! print *, 'The tangent of the first and second number is: ', tan(x), tan(y), ' respectively.'
    ! print *, 'The arcsine of the first and second number is: ', asin(x), asin(y), ' respectively.'
    ! print *, 'The arccosine of the first and second number is: ', acos  (x), acos(y), ' respectively.'


    !! Question 6: Use logical operations (.and., .or., .not.) to check if a number lies between two values.

    ! integer :: a
    ! print *, 'Enter a number: '
    ! read(*,*) a

    ! if (a >= 10 .and. a <= 20) then
    !     print *, 'The number is between 10 and 20.'
    ! else if (a < 10 .or. a > 20) then
    !     print *, 'The number is not between 10 and 20.'
    ! else
    !     print *, 'Invalid input.'
    ! end if

    !! Question 7: Declare a constant for π and use it to calculate volume of a sphere.

    ! real :: pi, radius, volume
    ! pi = 3.1428571
    ! print *, 'Enter the radius of the sphere: '
    ! read(*,*) radius

    ! volume = (4.0 / 3.0) * pi * radius**3
    ! print *, 'The volume of the sphere is: ', volume


    !! Question 8: Try an invalid operation (like adding a string to a number) and observe the error.

    ! real :: q = 2
    ! character :: ctr = 't'

    ! Print *, 'The sum is: ', q + ctr  !! The error: Error: Operands of binary numeric operator '+' at (1) are REAL(4)/CHARACTER(1)

    !! Question 9: Read a name from user and print “Hello, [name]!”.

    ! character(len=30) :: name
    ! print *, 'Enter your given name: '
    ! read(*,*) name

    ! print *, 'Hello, ', trim(name), '!'  
    !! The trim function in Fortran is used to remove trailing spaces from a character string. This is particularly useful because Fortran character variables are often fixed-length and padded with spaces if the assigned value is shorter than the declared length. For example, if name is declared as character(len=30) :: name and the user enters a shorter name, the remaining characters will be spaces. Using trim(name) returns the string without those trailing spaces, making output cleaner and avoiding formatting issues.


    !! Question 10: Create a program with uninitialized variables and explain the difference when you use implicit none.

    ! real :: x
    print *, 'The value of x is: ', x  ! This will print a garbage value because x is uninitialized


    

end program hello_world
! This is the end of the program