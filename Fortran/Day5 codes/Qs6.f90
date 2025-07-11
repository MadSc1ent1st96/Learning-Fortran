!! Question 6: Create a function that returns determinant of a 2x2 matrix.

module matrix_determinant

    contains

    subroutine calc_determinant(M, determinant)

        Real, intent(in) :: M(2,2)
        ! integer :: i, j
        REAL, intent(out) :: determinant

        determinant = 0.0

        determinant = (M(1,1) * M(2,2)) - (M(1,2) * M(2,1))
        print *, 'The calculated determinant for the give 2 x 2 matrix is: ', determinant
    end subroutine calc_determinant
end module matrix_determinant

program calculate_determinant
    use matrix_determinant
    implicit none
    integer :: i, j
    real :: V
    Real :: A(2, 2)

    A = reshape([4.0, 2.0, 1.0, 5.0], [2, 2])

    print *, 'Printing matrix A: '
    do i = 1, 2
        do j = 1, 2
            write(*, '(F6.2, F6.2)',advance = 'no') A(i, j)
        end do
        print *
    end do
    call calc_determinant(A, V)



end program calculate_determinant