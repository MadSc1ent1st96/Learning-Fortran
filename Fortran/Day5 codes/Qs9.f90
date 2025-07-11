!! Compare accuracy of trapezoidal vs midpoint rule.

! We will write code for the integral of x**2 from 0 to 5 and compare.

!! Trapezoidal first

program integral_trapezoidal
    implicit none
    integer :: n, i
    real :: a, b, h, calculated_integral_trap, sum_trap, sum_mid, calculated_integral_mid
    
    
    sum_trap = 0.0
    a = 0.0
    b = 5.0
    n = 50
    h = (b-a)/n

    do i = 1, n-1
        sum_trap = sum_trap + f(a + i*h)
    end do
    calculated_integral_trap = (h/2)*(f(a) + f(b) + (2*(sum_trap)))

    print *, 'approx integral (Trapezoid rule) is: ', calculated_integral_trap

    !! Now we will write a similar code for midpoint rule:        
        do i = 1, n
            sum_mid = sum_mid + f(a + ((i - 0.5)*h))
        end do
        calculated_integral_mid = h*sum_mid
    
        print *, 'approx integral (midpoint rule) is: ', calculated_integral_mid

    contains

    real function f(q)
        real, intent(in) :: q 
        f = q**2
    end function f
    
end program integral_trapezoidal


!! In this case,
!!  - For n = 10, midpoint = 41.5625000 , Trapezoid = 41.8750000 
!!  - for n = 50, midpoint = 41.6624947 , Trapezoid = 41.6750031
!!  - for n = 100, midpoint = 41.6656265, Trapezoid = 41.6687508
!! Midpoint converged faster than trapezoid !!