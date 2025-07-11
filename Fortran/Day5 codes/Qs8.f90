!! Question 8: Plot output of integration or solution using file+Python.

program integral_trapezoidal
    implicit none
    integer :: n, i, ios
    real :: a, b, h, calculated_integral, sum, x
    
    
    sum = 0.0
    a = 0.0
    b = 1.0
    print*, 'Write the number of parts(n) you want to divide the interval in: '
    read(*,*) n
    h = (b-a)/n


    open(unit = 10, file = 'Qs8_output.csv', status = 'unknown', action = 'write', iostat = ios)
    write(10, '(A)') 'x,f(x),integral'

    do i = 1, n-1
        x = a + i*h
        sum = sum + f(a + i*h)
        calculated_integral = (h/2)*(f(a) + f(b) + (2*(sum)))
        write(10, '(F8.5,",",F8.5,",",F8.5)') x,f(x), calculated_integral
    end do
    ! calculated_integral = (h/2)*(f(a) + f(b) + (2*(sum)))
    
    print *, 'approx integral is: ', calculated_integral
    print *, 'The exact value is: 1/3'


    if (ios /= 0) then
        print *, 'Error opening file, code: ', ios
        stop
    end if
    
    close(10)


contains

    real function f(q)
        real, intent(in) :: q 
        f = q**2
    end function f

    



end program integral_trapezoidal