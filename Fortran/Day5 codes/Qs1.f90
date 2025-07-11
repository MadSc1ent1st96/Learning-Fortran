!! Question 1: Write a function to compute the derivative of f(x) = x^2 using finite differences.

!! We will use central differences as it is the most accurate.

program derivate_x_square

    implicit none

    real :: x, h, exact_derivative, calculated_derivative

    x = 2.0
    h = 0.001

    calculated_derivative = (f(x + h) - f(x - h))/(2.0*h)
    exact_derivative = 2*x
    print *, 'The calculated derivative using central difference method is: ', calculated_derivative
    print *, 'The exact derivative: ', exact_derivative

    contains

    real function f(q)      ! You need to write : 'real function f(q) result(res)' if you want to use a different variable name from the function name.
        real, intent(in) :: q
        f = q**2
    end function f
    

end program derivate_x_square