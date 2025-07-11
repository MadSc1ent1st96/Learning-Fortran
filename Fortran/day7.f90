!! Integrating everything we have learned and making a mini-project simulation.

!! Orbital Simulation Under Gravity (Euler's Method)
! We want to simulate the motion of a planet orbiting a star using Newton's law of gravitation:
!       d2r(vector)/dt2 = - G*M*r(vector)/r**3
! where r(vector) = (x,y) is a position vector, r = sqrt(x**2 + y**2)
! G is gravitational constant, M is the mass of the central star

!! Streategy: To convert second-order ODE to first-order:
!               dx/dt = vx,     dy/dt = vy
!              dv(x)/dt = - (G * M * x)/ r**3, dv(y)/dt = - (G * M * y)/ r**3 

module Gravity
    implicit none
    real, parameter :: pi = 4 * atan(1.0)
    real, parameter :: G = 4 * pi**2     ! Gravitational constant
    real, parameter :: M = 1.0          ! Mass of central star, normalized
contains

    subroutine acceleration(x, y, ax, ay)
        real, intent(in) :: x, y
        real, intent(out) :: ax, ay
        real :: r        

        r = sqrt(x**2 + y**2)
        ax = - (G * M * x ) / r**3
        ay = - (G * M * y ) / r**3
    end subroutine acceleration

end module Gravity

program orbit_simulation
    use Gravity
    implicit none

    integer :: i, n_steps, ios
    real :: x, y, vx, vy, ax, ay
    real :: dt, t
    character(len=100) :: filename
    
    real :: r

    ! Initial Condition (Circular orbit)

    x = 1.0     ! Initial distance (AU)
    y = 0.0
    vx = 0.0
    vy = 5.0    ! Less than circular velocity(To get eliptical orbit)    ! 2 * 3.14     ! Circular velocity for 1 AU (2pi)
    dt = 0.001
    n_steps = 10000
    filename = 'orbit.csv'

    open(unit=10, file = filename, status = 'unknown', action = 'write', iostat = ios)
    if (ios /= 0) then
        print *, 'Error opening file with error code: ', ios
    end if

    write(10, '(A)') "t,x,y,vx,vy,r"

    ! Simulation loop

    t = 0.0
    do i = 1, n_steps
        call acceleration(x, y, ax, ay)

        ! Euler integration
        vx = vx + dt * ax
        vy = vy + dt * ay
        x = x + dt * vx
        y = y + dt * vy
        t = t + dt
        r = sqrt(x**2 + y**2)

        ! Write to csv
        write(10, '(F8.5,",",F10.5,",",F10.5,",",F10.5,",",F10.5,",",F10.5)') t, x, y, vx, vy, r
    end do 
    close(10)

    print *, 'Simulation complete. Output written to "orbit.csv"'

end program orbit_simulation