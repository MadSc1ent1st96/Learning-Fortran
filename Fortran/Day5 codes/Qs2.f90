!! Question 2: Implement the trapezoidal rule for integral(x² dx) from 0 to 1.

!! Recall trapezoidal rule:
!  Trapezoidal Rule:
!           integral (a to b) of f(x)dx ~
!               (h/2)[f(a) + f(b) + (2*(sum of f(xi) from i = 1 to n-1)]
!           - Subdivide interval [a,b] into n parts
!           - h = (b-a)/n

program integral_trapezoidal
    implicit none
    integer :: n, i
    real :: a, b, h, calculated_integral, sum
    
    
    sum = 0.0
    a = 0.0
    b = 1.0
    print*, 'Write the number of parts(n) you want to divide the interval in: '
    read(*,*) n
    h = (b-a)/n

    do i = 1, n-1
        sum = sum + f(a + i*h)
    end do
    calculated_integral = (h/2)*(f(a) + f(b) + (2*(sum)))

    print *, 'approx integral is: ', calculated_integral
    print *, 'The exact value is: 1/3'

    contains

    real function f(q)
        real, intent(in) :: q 
        f = q**2
    end function f
    


end program integral_trapezoidal


