!!! *** NUMERICAL METHODS *** !!!

! 1. Numerical differentiation: FINITE DIFFERENCES
    ! a. Forward difference:
    !     f'(x) ~ (f(x + h) - f(x))/ h
        ! - First-order accurate
        ! - Use when future value is known.
    ! b. Backward difference:
    !      f'(x) ~ (f(x) - f(x - h))/ h
    !    - Use when previous value is known
    ! c. Central difference:
    !       f'(x) ~ (f(x + h) - f(x - h))/ 2*h
    !    - Second-order accurate
    !    - Preferred for better accuracy

    !! Second Derivative:
    !       f''(x) ~ f(x + h) - (2 * f(x)) + f(x - h) / (h**2)



! 2. Numerical Integration
!       a. Trapezoidal Rule:
!           integral (a to b) of f(x)dx ~
!               (h/2)[f(a) + f(b) + (2*(sum of f(xi) from i = 1 to n-1)]
!           - Subdivide interval [a,b] into n parts
!           - h = (b-a)/n
!       b. Simpsons 1/3 rule:
!           integral (a to b) of f(x)dx ~
!               (h/3)[f(a) + f(b) + (4*(sum of f(xi) , i = odd 1 to n-1)) + (2*(sum of f(xi), i = even 1 to n-2))]
!           - Requires even number of intervals
!           - Much more accurate (4th order)
!       c. Simpson's 3/8 rule:
!           integral (a to b) of f(x)dx ~
!               (3*h/8)[f(x0) + 3*f(x1) + 3*f(x2) + 2*f(x3) + .... + f(xn)]
!           - when n is a multiple of 3.
!           - Use Case: You only know function values at points, or symbolic integration is not possible.

!       d. Midpoint rule:
!       - integral = h*(sum f(xi) from 1 to n)
!       - where h = (b-a)/n, xi = a + ((i - 0.5)*h)
!       - Instead of computing the exact area under the curve, it estimates the area using rectangles, where the height of each rectangle is the value of the function at the midpoint of the interval.
!       - We are basically saying, Area ~ width x height, where height = f(midpoint)


! 3. Root finding method
! Purpose: find the value of x at which f(x) = 0
! 
!       a. Bisection method:
!           - Choose interval [a,b] such that f(a)*f(b) < 0. (Which would mean a root lies in this interval)
!           - Repeat:
!               c = (a+b)/2, f(c) = f(a+b/2)
!           - Update the interval depending on the sign of f(c)
!           - Guranteed to converge and slow.

!       b. Newton-Raphson method:
!           xn+1 = xn - [f(xn)/f'(xn)]
!           - Fast, quadratic converge
!           - Needs derivative f'(x)
!           - Can diverge if guess is poor or f'(x) ~ 0

!       c. Secant method:
!           xn+1 = xn - f(xn)*[(xn - x(n-1)/f(xn) - f(xn-1))]
!           - Doesn't require derivative
!           - Slower than Newton-Raphson, faster than bisection


