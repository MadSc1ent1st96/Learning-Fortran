!! Question 10: Model the motion of a falling object with air drag.


!! Equation : m * dv/dt = mg - kv --> k = drag coefficient, kv = linear drag
!! dv/dt = g - (k/m)v

!! We will solve using Euler's method, similar to Qs4
!! y(n+1) = y(n) + h * f( x(n), y(n) )
!! T(n) = T(n-1) + h * dt/dt --> as we are differentiating with respect to t
!! acc(n) = g - (k/m) * v(n)
!! v(n) = v(n-1) + h * dv/dt 

program motion
    implicit none

    real :: g, k, m, t, h
    integer :: n, i, ios
    REAL, allocatable :: Vel(:), Time(:), acc(:)
    
    ! Parameters
    g = 9.8     ! Acceleration due to gravity
    k = 0.1     ! Drag coefficient
    m = 1.0     ! mass of the falling object
    h = 0.1     ! time step
    T = 100.0    ! Total time   

    n = int(t/h) + 1
    allocate(vel(n), time(n), acc(n))

    ! initial condition
    time(1) = 0.0
    vel(1) = 0.0
    acc(1) = g - ((k/m) * vel(1))

    ! Euler method loop
    do i = 2, n
        time(i) = time(i-1) + h
        acc(i) = g - ((k/m) * vel(i-1))
        vel(i) = vel(i-1) + h * acc(i)
    end do

    ! Write to file
    open(unit = 10, file = 'falling_with_drag.csv', status = 'unknown', action = 'write', iostat = ios)
    if (ios /= 0) then
        print *, 'Error opening the file, code: ',ios
        stop
    end if

    write(10, '(A)') "T,v(t),a(t)"
    do i = 1, n
        write(10, '(F6.2, ",", F8.5, ",", F8.5)') time(i), vel(i), acc(i)
    end do
    close(10)

    print *, 'Output written to falling_with_drag.csv'


    !! We can make a full simulation from this by taking/reading the parameters like 'mass' from another txt file, so that users can change the parameters without directly changing the code and providing the final output and plots, automatically.

end program motion