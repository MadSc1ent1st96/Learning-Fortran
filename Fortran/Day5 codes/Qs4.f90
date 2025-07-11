!! Question 4: Code Euler’s method for dy/dx = -y, y(0) = 1.


!! Euler's method formula:
!!      y(n+1) = y(n) + h * f( x(n), y(n) )
program euler_method
    implicit none

    real :: x, y, h, x_end
    integer :: n, i

    ! initial condition
    x = 0.0
    y = 1.0

    ! step size and range
    h = 0.1
    x_end = 1.0
    n = int((x_end - x)/h)

    print '(A1, 3X, A8, 3X, A8, 3X, A5)', 'x', 'y(Euler)', 'y(exact)', 'Error'

    do i = 1, n
        print '(F5.2, 3X, F10.6, 3X, F10.6, 3X, E10.2)', x, y, exp(-x), abs(y - exp(-x))
        y = y + h * f(x,y)
        x = x + h
    end do

    contains

    ! RHS of ODE --> dy/dx = f(x,y) = -y
    real function f(l,m)
        real, intent(in) :: l, m
        f = -m 
    end function f




end program euler_method