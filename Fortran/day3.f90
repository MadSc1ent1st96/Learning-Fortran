!! Subroutines, Functions and Modules 


!! Subroutine and functions are similar such that they both make a reusable code block, taking inputs.
! When to use subroutine and when to use function?
! Use a function when:
! 1. You want to return a single value.
! 2. it should be a part of an expression (like a = sqrt(x)).
! 3. It should act like a mathematical function.
! Use a subroutine when:
! 1. You are performing an action that does not return a value.
! 2. You need multiple outputs or side effects (like modifying an array).
! 3. You are modifying arguments, writing files.

!! In Python, functions with no return (def f():) are effectively subroutines.
!! In C/C++, void functions serve the same purpose as Fortran subroutines.
!! So Fortran just makes the distinction explicit, which is helpful in large numerical codes.

!! Syntax of a subroutine:
! subroutine subroutine_name(arg1, arg2, ...)
!     implicit none
!     ! Declare variables and their types
!     ! Use intent(in), intent(out), or intent(inout) to specify how arguments are used
!     ! Write the code for the subroutine
! end subroutine subroutine_name


! Subroutine print_matrix(n,A)
!     implicit none
!     integer, intent(in) :: n
!     real, intent(in) :: A(n,m)
!     integer :: m = 20
!     integer :: i

!     do i = 1, n
!        print *, A(i, 1:m)
!     end do
! end subroutine print_matrix

!! Syntax of a function:
! function function_name(arg1, arg2, ...) result(res) --> Mention the stuff you want to return. Similar to when we write return at the last in python.
!     implicit none
!     ! Declare variables and their types
!     ! Use intent(in) for input arguments
!     ! Write the code for the function
! end function function_name


!! Modules
! Modules are used to group related subroutines, functions, and data together.

!! When we want to use a subroutine or function from a module, we need to use the `use` statement.
! Syntax:
! module module_name
!     implicit none
!     ! Declare subroutines, functions, and variables
! contains

! module my_module
!     implicit none

!     contains        !!!! Used to define subroutines and functions within the module. (Basically differentiate between variable declarations and subroutine/function definitions)

    ! subroutine print_matrix(n, m, A)
    !     implicit none
    !     integer, intent(in) :: n, m
    !     real, intent(in) :: A(n, m)
    !     integer :: i

    !     do i = 1, n
    !         print *, A(i, 1:m)
    !     end do
    ! end subroutine print_matrix


    !! Question 1: Write a function to compute factorial of a number.
    ! function factorial(n) result(fact)
    !     implicit none
    !     integer, intent(in) :: n
    !     integer :: fact
    !     integer :: i, j

    !     do i = 1, n
    !         fact = 1
    !         inner_do : do j = 1, i
    !             fact = fact * j
    !         end do inner_do
    !     end do
    ! end function factorial

! end module my_module


!!! Like C++, we can make private and public variables in modules.
!! Write public before the variable declaration to make it accessible outside the module.
!! Write private before the variable declaration to make it inaccessible outside the module.
!! example: 
! module my_module
!     implicit none
!     public interger_var, real_var
!     private
!     integer :: integer_var
!     real :: real_var
!     contains
!  And then rest of the module code goes here.
! end module my_module


!! Question 2: Write a subroutine that takes two numbers and swaps them.

! subroutine swap(a,b)
!     implicit none
!     integer, intent(inout) :: a,b
!     integer :: temp

!     temp = a
!     a = b
!     b = temp
! end subroutine swap

!! Question 3: Write a function that returns the square of a number.
! Function square(x) result(sq)
!     implicit none
!     real, intent(in) :: x
!     real :: sq

!     sq = x**2
! end function square

!! Question 4: Define a module with a constant g = 9.8 and use it in a program to compute free fall.

! module constants
!     implicit none
!     real, parameter :: g = 9.8  ! Gravitational constant
! end module constants
!!! CONTINUED IN THE MAIN PROGRAM BELOW !!!


!! Question 5: Create a module with a subroutine that prints a welcome banner.

! module my_module
!     implicit none

!     contains

!     subroutine print_welcome_banner()
!         implicit none
!         print *, '********************************'
!         print *, '*          Welcome             *'
!         print *, '********************************'
!     end subroutine print_welcome_banner
! end module my_module



!! Question 6: Use intent(in) and intent(out) in a subroutine that calculates area and perimeter of a rectangle.

! subroutine calculate_area_perimeter(length, width, area, perimeter)
!     implicit none
!     real, intent(in) :: length, width
!     real, intent(out) :: area, perimeter

!     area = length * width
!     perimeter = 2.0 * (length + width)

!     print *, 'Area of the rectangle is: ', area
!     print *, 'Perimeter of the rectangle is: ', perimeter
! end subroutine calculate_area_perimeter

!! Question 7: Write a subroutine that normalizes a vector of 3 elements.

! subroutine normalize_vector(v)
!     implicit none
!     real, intent(inout) :: v(3)
!     real :: norm
!     integer :: i
!     norm = sqrt(v(1)**2 + v(2)**2 + v(3)**2)
!     if (norm /= 0.0) then
!         do i = 1, 3
!             v(i) = v(i) / norm
!             print *, 'Normalized vector element ', i, ': ', v(i)
!         end do
!     else
!         print *, 'Cannot normalize a zero vector.'
!     end if
! end subroutine normalize_vector


!! Question 8: Create a function that returns the nth Fibonacci number.
! module fibonacci_module
!     implicit none
!     contains
!     integer function fibonacci(n) result(fib)
!     implicit none
!     integer, intent(in) :: n
!     integer :: a, b, i

!     if (n < 0) then
!         print *, 'Fibonacci is not defined for negative numbers.'
!         fib = -1
!         return
!     else if (n == 0) then
!         fib = 0
!         print *, 'Fibonacci number at position 0 is 0'
!         return
!     else if (n == 1) then
!         fib = 1
!         print *, 'Fibonacci number at position 1 is 1'
!         return
!     else if (n > 1) then
!         a = 0
!         b = 1
!         do i = 2, n
!             fib = a + b
!             a = b
!             b = fib
!         end do
!         print *, 'Fibonacci number at position ', n, ' is ', fib
!     end if
! end function fibonacci
! end module fibonacci_module

!! Question 9: Combine a module + subroutine + main program that simulates projectile motion.

! module projectile_module
!     implicit none
!     real, parameter :: g = 9.8  ! Gravitational acceleration in m/s^2
!     contains

!     subroutine simulate_projectile_motion(initial_velocity, angle, dt, t_max)
!         implicit none
!         real, intent(in) :: initial_velocity, angle, dt, t_max
!         real :: radian_angle, vx, vy, t, x, y

!         radian_angle = angle * (3.141592653589793 / 180.0)  ! Convert angle to radians
!         vx = initial_velocity * cos(radian_angle)
!         vy = initial_velocity * sin(radian_angle) 

!         print *, 'Time(s) ','    X(m)', '    Y(m)'
!         t = 0.0

!         do while (t <= t_max)
!             x = vx * t
!             y = vy * t - 0.5 * g * t**2

!             if (y<0.0) then
!                 exit
!             end if
!             print '(F6.2, 3X, F6.2, 3X, F6.2)', t, x, y
!             t = t + dt
!         end do
!     end subroutine simulate_projectile_motion

! end module projectile_module


!! Question 10: Use a contains section to include an internal function.

! module my_module
!     implicit none

!     contains

!     function square(x) result(sq)
!         implicit none
!         real, intent(in) :: x
!         real :: sq

!         sq = x**2
!     end function square

! end module my_module

program day3
    ! implicit none

    ! integer(kind = 4) :: i, n, f    ! By default integer kind is 4 bytes, we can change it to 8 bytes if needed.

    ! read(*,*) i,f

    ! do n = 1,15
    !     print *, i*(f**n)
    ! end do


    ! integer :: i, n = 5
    ! integer :: fact 

    ! do i = 0, n
    !     fact = 1
    !     do j = 1, i
    !         fact = fact * j
    !     end do
    !     print *, 'Factorial of ', i, ' is ', fact    
    ! end do
    

    !!****************___________****************!!

    ! real :: matrix(10,20)
    ! matrix(:,:) = 0.0

    ! call print_matrix(10,matrix)
    ! USE my_modulE
    ! implicit none
    ! integer :: n, m
    ! real :: A(10, 20)
    ! integer :: num
    ! integer :: result
    ! n = 10
    ! m = 20
    ! A(:,:) = 0.0
    ! call print_matrix(n, m, A)
    ! read(*,*) num
    ! result = factorial(num)
    ! print *, 'Factorial of ', num, ' is ', result

    !! Question 4: Use the module with constant g = 9.8 to compute free fall distance.
    ! use constants
    ! implicit none
    ! real :: time, distance
    ! print *, 'Enter time in seconds:'
    ! read(*,*) time
    ! distance = 0.5 * g * time**2
    ! print *, 'Distance fallen in ', time, ' seconds is ', distance, ' meters.'  ! Can also use format specifiers like (F10.2) to control the output format.


    !! Question 5: Use the module with subroutine to print a welcome banner.
    ! use my_module
    ! implicit none
    ! call print_welcome_banner()

    !! Question 6: Use the subroutine to calculate area and perimeter of a rectangle.
    ! real :: area, perimeter
    ! call calculate_area_perimeter(5.0, 3.0, area, perimeter)
    

    !! Question 7: Normalize a vector of 3 elements.
    ! real :: vec(3)
    ! vec = [3.0, 4.0, 5.0]  ! Example vector
    ! print *, 'Original vector: ', vec
    ! call normalize_vector(vec)

    !! Question 8: Compute the nth Fibonacci number.
    ! use fibonacci_module  ! Use the module containing the Fibonacci function
    ! implicit none
    ! integer :: n, fib
    ! print *, 'Enter the value of n for Fibonacci:'
    ! read(*,*) n
    ! fib = fibonacci(n)
    

    !! Question 9: Simulate projectile motion using the module and subroutine.
    ! use projectile_module
    ! implicit none
    ! real :: initial_velocity, angle, dt, t_max

    ! ! User input for projectile motion parameters
    ! print *, 'Enter initial velocity (m/s):'
    ! read(*,*) initial_velocity
    ! print *, 'Enter launch angle (degrees):'
    ! read(*,*) angle
    ! print *, 'Enter time step (seconds):'
    ! read(*,*) dt
    ! print *, 'Enter total time of simulation (seconds):'
    ! read(*,*) t_max

    ! ! Call the subroutine to simulate projectile motion
    ! call simulate_projectile_motion(initial_velocity, angle, dt, t_max)


    !! Question 10: Use the internal function to compute the square of a number.
    ! use my_module
    implicit none
    real :: x, sq
    print *, 'Enter a number to compute its square:'
    read(*,*) x
    sq = square(x)
    print *, 'The square of ', x, ' is ', sq

    contains        !! A function or subroutine defined in the contains section is called an internal function or subroutine. It is defined inside the main program and can only be used within that program.

    ! ! Internal function to compute square
    function square(A) result(s)
        real, intent(in) :: a
        real :: s

        s = a**2
    end function square
end program day3