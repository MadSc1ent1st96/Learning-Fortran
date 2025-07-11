! Arrays and Loops

! Array declaration
! 1D array : integer, dimension(5) :: a   OR    integer :: a(5)
! 2D array : integer, dimension(3,4) :: b   OR    integer :: b(3,4)
! custom array : real :: c(0:9)     OR     real :: d(-10,10)

! Array slicing - SIMILAR TO PYTHON
! array = [1,2,3,4,5,6,7,8,9,10] --> array(1:10:2) prints out elements at odd indices, start at element 1, go up to element 10, in step of 2
! a(1:5) = 2 --> Set first five elements to one
! a(1:5) = 1:5 --> Set first five elements to 1,2,3,4,5 respectively

! Allocatable arrays
! integer, allocatable :: a(:)
! integer, allocatable :: b(:,:)
! allocate(a(5))  ! Allocates an array of size 5
! allocate(b(3,4)) ! Allocates a 2D array of size 3x4
!  ***.......***** (YOU DO SOME STUFF)
! Deallocate arrays
! deallocate(a)



program start
    implicit none
    
    ! Character strings
    ! character(len=20) :: str1, str2, full_name
    ! str1 = 'Aniket'
    ! str2 = 'Mishra'

    ! ! String concatenation
    ! full_name = trim(str1) // ' ' // trim(str2)
    ! print *, 'Full Name: ', full_name
    
    ! character(:), allocatable :: str3, str4, new_full_name   !** --> This should be at the top. Fortran expects all the declarations at the beginning of the program, before any executable statements.
    ! str3 = 'Aniket'
    ! str4 = 'Mishra'
    ! new_full_name = trim(str3) // ' ' // trim(str4)
    ! print *, 'New Full Name: ', new_full_name
   
!!! *****LOGICAL OPERATORS*****
    ! Operators: .eq./ '==' (equal), .ne./ '/=' (not equal), .lt./ '<' (less than), .le. / '<='(less than or equal to), .gt./ '>' (greater than), .ge. '>=' (greater than or equal to)
    ! Logical operators: .and., .or., .not., .eqv. (equivalent [Same logical value for opernd on both sides]), .neqv. (not equivalent)
    ! Logical variables


    ! logical :: is_valid, is_active
    ! is_valid = .true.
    ! is_active = .false.
    
    ! ! Example of logical operations
    ! if (is_valid .and. is_active) then
    !     print *, 'Both conditions are true.'
    ! else if (is_valid .or. is_active) then
    !     print *, 'At least one condition is true.'
    ! else
    !     print *, 'No conditions are true.'
    ! end if


    ! If statements

    ! rEal :: angle 

    ! print *, 'Enter the angle in degrees: '
    ! read(*,*) angle

    ! if (angle<90) then
    !     print *, 'Acute angle'
    ! else if (angle==90) then
    !     print *, 'Right angle'
    ! else if (angle<180) then
    !     print *, 'Obtuse angle'
    ! else
    !     print *, 'Reflex angle'
    ! end if

    !! Do Loops

    ! integer :: i, n, f

    ! do i = 1, 10    ! Start at 1, go up to 10
    !     print *, 'i = ', i
    !     f = i * i   ! Square of i
    !     print *, 'Square of i = ', f
    ! end do

    ! do n = 1, 10, 2     ! Step of 2
    !     print *, 'n = ', n
    ! end do

    !! Conditional Do Loops

    ! integer :: i = 0 , n = 0

    ! do while (n < 9)
    !     n = n + 1
    !     print *, 'n =  ', n

    ! end do


    ! do while (i < 11)
        ! if (mod(i, 2) == 0) then ! Will print only even numbers
        !     print *, 'Skipping'
        !     i = i + 1
        !     cycle ! Skip the rest of the loop body and continue with the next iteration
        ! end if

    !     if ( i > 6) then
    !         print *, 'Breaking'
    !         exit ! Exit the loop
    !     end if
    !     print *, i
    !     i = i+1
    ! end do
    ! print *, 'Final value of i, outside loop: ', i


    !! Nested Do Loops
    ! integer :: i, j, counter = 0

    ! outer_loop: do i = 1, 10
    !     inner_loop: do j = 1, 10
    !         if ((i + J) > 5) then
    !             cycle outer_loop ! Skip to the next iteration of the outer loop
    !         end if
    !         counter = counter + 1
    !         print *, 'i = ', i, ' j = ', j
    !     end do inner_loop
    ! end do outer_loop
    ! print *, 'Total iterations: ', counter


    !! Array Example
    ! integer, allocatable :: a(:)
    ! integer :: i, n
    ! n = 10
    ! allocate(a(n))  ! Allocating an array of size n
    ! ! Initialize the array
    ! do i = 1, n
    !     a(i) = i * i  ! Set each element to the square of its index
    ! end do
    ! ! Print the array
    ! print *, 'Array elements: '
    ! do i = 1, n
    !     print *, 'a(', i, ') = ', a(i)
    ! end do
    ! ! Deallocate the array
    ! deallocate(a)


    !! 2D Array Example
    ! integer, allocatable :: b(:,:)
    ! integer :: rows, cols, j, i
    ! rows = 3
    ! cols = 4
    ! allocate(b(rows, cols))  ! Allocating a 2D array of size rows x cols
    ! ! Initialize the 2D array
    ! do i = 1, rows
    !     do j = 1, cols
    !         b(i, j) = i + j  ! Set each element to the sum of its row and column indices
    !         print *, 'b(', i, ',', j, ') = ', b(i, j)
    !     end do
    ! end do
    ! ! Deallocate the 2D array
    ! deallocate(b)



    !! Question 1: Write a program to check whether a number is positive, negative, or zero.

    ! real :: a
    ! print *, "Enter the number to check: "
    ! read(*,*) a
    ! if (a > 0.0) then
    !     print *, "The number is positive."
    ! else if (a < 0.0) then
    !     print *, "The number is negative."
    ! else
    !     print *, "The number is zero."
    ! end if

    !! Question 2: Print the first 10 natural numbers using a do loop.

    ! integer :: i = 0
    ! print *, "The first 10 natural numbers are: "
    ! do i = 1, 10
    !     print *, i
    ! end do


    !! Question 3: Print a multiplication table (1 to 10) using nested loops.

    ! integer :: i, n
    ! print *, "Enter a number to print its multiplication table: "
    ! read(*,*) n

    ! print *, "Multiplication table for ", n, ":"
    ! do i = 1,10
    !     ! print *, n, " * ", i, " = ", n * i
    !     write(*,'(I0," * ",I0," = ",I0,1X)', advance = 'no') n, i, n * i      ! Advanced formatting: advance = 'no' means it will not go to the next line after printing. 

        ! Format strings: Format strings control how output looks. Here's what '(I0)' means: I - integer format, 0 - minimum width of the integer (0 means no minimum width), 1X - one space after the integer.
        ! You can also use 'F' for floating-point numbers, 'A' for character strings, etc.

        !! Some examples of format strings:
        ! I4 - integer with a minimum width of 4 characters (padded with spaces if necessary)
        ! F6.2 - floating-point number with a total width of 6 characters, including 2 decimal places
        ! A10 - character string with a minimum width of 10 characters (padded with spaces if necessary)
        ! 1x - one space after the previous output

    !! Question 4: Use select case to assign grades based on marks.

    ! The select case construct in Fortran is similar to switch in C or match in modern languages. It provides a clean and readable way to compare a variable against multiple values or ranges.

    !! Syntax:
!     select case (expression)
!   case (value1)
!     ! code block
!   case (value2)
!     ! code block
!   case (value3:value4)  ! range
!     ! code block
!   case default
!     ! fallback block
!   end select

    ! integer :: score
    ! print *, "Enter your score(0-100): "
    ! read(*,*) score

    ! select case (score)
    ! case (90:100)
    !     print *, "Grade: A"
    ! case (80:89)
    !     print *, "Grade: B"
    ! case (70:79)
    !     print *, "Grade: C"
    ! case (60:69)
    !     print *, "Grade: D"
    ! case (0:59)
    !     print *, "Grade: F"
    ! case default
    !     print *, "Invalid score. Please enter a score between 0 and 100."
    ! end select


    !! Question 5: Declare an integer array of size 5 and initialize it manually, then print it.

    ! integer :: i, arr(5)
    ! arr = [1, 2, 3, 4, 5]  ! Initializing the array with values
    ! print *, "The array elements are: "
    ! do i = 1, size(arr)
    !     print "(A4I0A3I4)", 'arr(', i, ') = ', arr(i)       ! Using format string to print the array elements. The format string "(A4I0A3I4)" means:
    !     ! A4 - 4 characters for the string 'arr('
    !     ! I0 - integer with no minimum width (it will take the width of the number)
    !     ! A3 - 3 characters for the string ') = '
    !     ! I4 - integer with a minimum width of 4 characters (padded with spaces if necessary)
    ! end do


    !! Question 6: Write a program that takes 5 numbers as input and calculates their sum and average.

    ! integer :: i, n(5)
    ! real :: sum = 0.0, average

    ! print *, "Enter 5 numbers: "
    ! do i = 1, 5
    !     read(*,*) n(i)
    ! end do

    ! do i = 1,5
    !     sum = sum + n(i)  ! Calculate the sum of the numbers
    ! end do
    ! print *, "The sum of the numbers is: ", sum
    ! average = sum / 5.0  ! Calculate the average
    ! print *, "The average of the numbers is: ", average


    !! Question 7: Implement a simple linear search in an array.

    ! integer:: i, n, target , pos
    ! integer, allocatable :: arr(:)
    ! logical :: found = .false.

    ! ! Read the size of the array
    ! print *, "Enter the size of the array: "
    ! read(*,*) n

    ! ! Allocate the array
    ! allocate(arr(n))

    ! ! Read the elements of the array
    ! print *, "Enter the elements of the array: "
    ! do i = 1, n
    !     read(*,*) arr(i)
    ! end do

    ! ! Read the target element to search for
    ! print *, "Enter the element to search for: "
    ! read(*,*) target

    ! ! Perform linear search
    ! do i = 1, n
    !     if (arr(i) == target) then
    !         found = .true.
    !         pos = i  ! Store the position of the found element
    !         exit  ! Exit the loop if the element is found
    !     end if
    ! end do

    ! ! Check if the element was found
    ! if (found) then
    !     print '(A7I2A19I0)', "Element ", target, " found at position ", pos
    ! else
    !     print "(A7I2A23I0)", "Element ", target, " not found in the array."
    ! end if
    ! ! Deallocate the array
    ! deallocate(arr)
    


    !! Question 8: Store a 3×3 matrix and display its transpose.

    ! integer, allocatable :: matrix(:,:), transpose(:,:)
    ! integer :: i, j, rows = 3, cols = 3
    ! allocate(matrix(rows, cols))
    ! allocate(transpose(cols, rows))

    ! ! Read the elements of the matrix
    ! print *, "Enter the elements of the 3x3 matrix: "
    ! do i = 1, rows
    !     do j = 1, cols
    !         read(*,*) matrix(i, j)
    !     end do
    ! end do

    ! ! Display the original matrix
    ! print *, "Original Matrix:"
    ! do i = 1, rows
    !     do j = 1, cols
    !         write(*,'(I4)', advance='no') matrix(i, j)  ! Print each element without going to the next line
    !     end do
    !      print *  ! Go to the next line after printing a row
    ! end do

    ! ! Calculate the transpose of the matrix
    ! do i = 1, rows
    !     do j = 1, cols
    !         transpose(j, i) = matrix(i, j)  ! Transpose operation
    !     end do
    ! end do

    ! ! Display the transposed matrix

    ! print *, "Transposed Matrix:"
    ! do i = 1, cols
    !     do j = 1, rows
    !         write(*,'(I4)', advance='no') transpose(i, j)  ! Print each element without going to the next line
    !     end do
    !     print *  ! Go to the next line after printing a row
    ! end do

    ! ! ! Deallocate the matrices
    ! deallocate(matrix)
    ! deallocate(transpose)



    !! Question 9: Find the largest element in an array.

    ! integer :: i, n, largest
    ! integer, allocatable :: arr(:)
    ! logical :: found = .false.

    ! ! ! Read the size of the array
    ! print *, "Enter the size of the array: "
    ! read(*,*) n

    ! ! ! Allocate the array
    ! allocate(arr(n))

    ! ! ! Read the elements of the array
    ! print *, "Enter the elements of the array: "
    ! do i = 1, n
    !     read(*,*) arr(i)
    ! end do

    ! ! ! Initialize largest with the first element
    ! largest = arr(1)
    
    ! ! ! Find the largest element
    ! do i = 2, n
    !     if (arr(i) > largest) then
    !         largest = arr(i)
    !         found = .true.
    !     end if
    ! end do

    ! ! ! Print the largest element
    ! if (found) then
    !     print '(A33I0)', "Largest element in the array is ", largest
    ! else
    !     print "(A15)", "Array is empty."
    ! end if

    ! ! ! Deallocate the array
    ! deallocate(arr)


    !! Question 10: Fill a 2D array with a(i,j) = i*j and print it in tabular form.

    ! integer :: i, j, rows = 2 , cols = 2
    ! integer, allocatable :: arr(:,:)

    ! ! Allocate the 2D array with the specified dimensions
    ! allocate(arr(rows, cols))

    ! ! Fill the 2D array with a(i,j) = i*j
    ! do i = 1, rows
    !     do j = 1, cols
    !         arr(i, j) = i * j
    !     end do
    ! end do

    ! ! Print the 2D array in tabular form
    ! print *, "The 2D array is: "
    ! do i = 1, rows
    !     do j = 1, cols
    !         write(*,'(I4)', advance='no') arr(i, j)  ! Print each element without going to the next line
    !     end do
    !     print *  ! Go to the next line after printing a row
    ! end do

    ! ! Deallocate the array
    ! deallocate(arr)

end program start