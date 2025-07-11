!! Question 3: Write a program to solve x^2 - 4 = 0 using bisection method.

! Recall:
!       Bisection method:
!           - Choose interval [a,b] such that f(a)*f(b) < 0. (Which would mean a root lies in this interval)
!           - Repeat:
!               c = (a+b)/2, f(c) = f(a+b/2)
!           - Update the interval depending on the sign of f(c)
!           - Guranteed to converge and slow.

program Bisection_method
    implicit none

    Real :: a, b, c
    double precision :: tol
    integer :: max_iter, i
    
    ! Let's take the interval of [a,b] as [0, 20] --> f(a) is -ve, f(b) is +ve, so f(a)*f(b) < 0
    a = 0.0
    b = 5.0
    tol = 1d-6     ! Another way to write 1^-6 in fortran.
    max_iter = 100

    do i = 1, max_iter
        c = (a + b)/2

        if (abs(f(c)) < tol) then
            exit
        end if

        if (f(a) * f(c) < 0) then
            b = c
        else 
            a = c
        end if
    end do

    print *, 'Root Found: ', c

    contains

    real function f(l)
        real, intent(in) :: l
        f = (l**2) - 4.0
    end function f


end program Bisection_method