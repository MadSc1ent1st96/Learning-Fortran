!! Question 7: Solve a linear system Ax = b using Gauss elimination for 3x3 case.

!! Goal: To solve - Ax = B, where, A,B,x are 3 x 3 matrix using gauss elimination. We want to find x1, x2, x3
 

! |a11  a12  a13| |x1|   |b1|
! |a21  a22  a23|*|x2| = |b2|
! |a31  a32  a33| |x3|   |b3|

!! Gauss Elimination: 
!   - Make an upper triangular matrix using row operations, then perform back substitution: solve for z from row 3, then y from row 2, then x from row 1, using the updated coefficients.


program gauss_elimination
  implicit none
  real :: A(3,3), b(3), x(3)
  integer :: i, j, k
  real :: factor

  ! System:
  ! 2x + 3y + z = 1
  ! 4x + y + 2z = 2
  ! 3x + 2y + 3z = 3

! Row 1
A(1,1) = 2.0; A(1,2) = 3.0; A(1,3) = 1.0
! Row 2
A(2,1) = 4.0; A(2,2) = 1.0; A(2,3) = 2.0
! Row 3
A(3,1) = 3.0; A(3,2) = 2.0; A(3,3) = 3.0
  
  b = [1.0, 2.0, 3.0]

  print *, 'Printing matrix A: '
    do i = 1, 3
        do j = 1, 3
            write(*, '(F6.2)',advance = 'no') A(i, j)
        end do
        print *
    end do

    print *, 'b:', b

  ! ----------------------
  ! Forward Elimination
  ! ----------------------
  do k = 1, 2
     do i = k+1, 3
        factor = A(i,k) / A(k,k)
        do j = k, 3
           A(i,j) = A(i,j) - factor * A(k,j)
        end do
        b(i) = b(i) - factor * b(k)
     end do
  end do

  ! ----------------------
  ! Back Substitution
  ! ----------------------
  x(3) = b(3) / A(3,3)
  x(2) = (b(2) - A(2,3) * x(3)) / A(2,2)
  x(1) = (b(1) - A(1,2) * x(2) - A(1,3) * x(3)) / A(1,1)

  ! ----------------------
  ! Output
  ! ----------------------
  print *, "Solution:"
  print *, "x = ", x(1)
  print *, "y = ", x(2)
  print *, "z = ", x(3)


  print *, 'Printing matrix A: '
    do i = 1, 3
        do j = 1, 3
            write(*, '(F6.2, F6.2, F6.2)',advance = 'no') A(i, j)
        end do
        print *
    end do

    print *, 'Initial b:', b

end program gauss_elimination
