!! Write a subroutine to perform matrix multiplication.

module matrix

    contains
subroutine matrix_multiplication(X,Y,Z,m,n,p)

    implicit none
    real, intent(in) :: X(:,:), Y(:,:)
    real, intent(out) :: Z(:,:)
    integer, intent(in) :: m, n, p
    integer :: i, j, k

    Z = 0.0

    i_loop : do i = 1, m
        j_loop: do j = 1, n
            k_loop : do k = 1, p
                Z(i,j) = Z(i,j) + (X(i,k) * Y(k,j))
            end do k_loop
        end do j_loop
    end do i_loop

end subroutine matrix_multiplication

subroutine print_matrix(M, r, c)
    real, intent(in) :: M(:,:)
    integer, intent(in) :: r, c
    integer :: i, j
    do i = 1, r
        do j = 1, c
            write(*, '(F7.2)', advance = 'no') M(i,j)
        end do
        print *
    end do
end subroutine print_matrix

end module matrix

program matrix_mult
    use matrix
    implicit none
    
    integer, parameter :: m = 3, n = 3, p = 3
    real :: X(m,n), Y(n,p), Z(m,p)

    ! Initialize X and Y

    X = reshape([1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0], [m,n])       ! Either use this or run a do loop
    Y = reshape([1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0], [n,p])
    
    call matrix_multiplication(X, Y, Z, m, n, p)

    print *, 'Matrix X: '
    call print_matrix(X, m, n)
    print *, 'Matrix Y: '
    call print_matrix(Y, n, p)
    print *, 'Matrix Z: '
    call print_matrix(Z, m, p)

end program matrix_mult