! File I/O in Fortran

! 1. Open Statement:
! Used to associate a unit number with a file. You need to open a file before you can read from or write to it.

! open(unit=10, file='data.txt', status='unknown', action='write')

! Common open options:
! i. unit = Integer identifying the file (think of it like a file handle)
! ii. file = name of the File
! iii. status = 'old' (file already exists), 'new' (file does not exist, create it), 'replace' (overwrite existing file), 'unknown' (default, safe option)
! iv. action = 'read', 'write', or 'readwrite' (default is 'read')
! v. form = 'formatted' (default, human-readable) or 'unformatted' (binary format)
! vi. access = 'sequential' (default, line-by-line) or 'direct' (random access)

! 2. Read Statement:
! Reads input — either from a file or user input (keyboard by default).

! read(10,*) x, y  ! Reads from unit 10
! read(*,*) a, b   ! Reads from console


! 3. Write Statment:
! Writes data to a file or to the screen.

! write(10,*) x, y     ! Write to file (unit 10)
! write(*,'(F6.2)') x  ! Write to screen with format


! 4. CLOSE Statement:
! Closes the file to release resources.

! close(10)
! ****Always close files after you're done with them.****


! 5. Formatted vs Unformatted Output:
!      Formatted I/O:
!      - Human-readable
!      - Uses format strings or list-directed I/O
!      - Example: write(10,*) a, b          ! List-directed (default formatting)
!                 write(10,'(F6.2,1X,I4)') a, b
!      Unformatted I/O:
!      - Binary representation (not human-readable)
!      - More efficient for large data files
!      - Example: write(10) a, b       ! Without format — binary
!                 read(10) a, b
!      - To use it, open the file with: open(unit=10, file='binary.dat', form='unformatted')

program file_io_example
    ! implicit none
    ! integer :: i
    ! real :: data(5) = [1.1, 2.2, 3.3, 4.4, 5.5]

    ! Write to file
    ! open(unit = 10, file= 'output.txt', status = 'unknown', action = 'write')
    ! do i = 1, 5
    !     write(10,*) data(i)
    ! end do
    ! close(10)

    ! Read from the file
    ! open(unit = 10, file = 'output.txt', status = 'old', action = 'read')
    ! do i = 1, 5
    !     read(10,*) data(i)
    !     print *, 'Real Value: ', data(i)
    ! end do
    ! close(10)


    !! Question 1: Write a program that writes a list of numbers to a file. 

    ! implicit none
    ! integer :: i, n

    ! print *, 'Enter till when the list should be written: '
    ! read(*,*) n

    ! open(unit = 5, file='Qs1.txt', status='unknown', action='write')
    ! do i = 1, n
    !     write(5, '(I0A1I0A1I0)') i !,  ' ', i**2, ' ', i**3
    ! end do
    ! close(5)


    !! Question 2: Read a file of 10 numbers and compute their mean. (The below code is general, for 10 numbers n = 10.)

    ! implicit none
    ! integer :: i, n
    ! real :: sum = 0.0, mean

    ! print *, 'Enter the number of elements to read from the file: '
    ! read(*,*) n

    ! open(unit = 10, file = 'Qs1.txt', status = 'old', action = 'read')

    ! do i = 1, n
    !     read(10,*) n
    !     sum = sum + n
    ! end do
    
    ! mean = sum/ n
    ! print *, 'The mean of the numbers is: ', mean


    !! Question 3: Write to a file in formatted output (e.g., 2 decimals).

    ! implicit none
    ! integer :: i, n
    ! real :: x

    ! print *, 'Enter the number of elements to write to the file: '
    ! read(*,*) n

    ! open(unit = 20, file = 'Qs3t.txt', status = 'unknown', action = 'write')
    ! do i = 1, n
    !     print *, 'Enter a real numbers: '
    !     read(*,*) x
    !     write(20, '(F6.2)') x ! Write with formatted output
    ! end do
    ! close(20)


    !! Question 4: Use status='replace' to overwrite an existing file.

    ! implicit none
    ! integer :: i, n

    ! ! Making a dummy file on which we will perform the replace operation 
    ! open(unit = 30, file = 'Qs4.txt', status = 'unknown', action = 'write')
    ! do i = 1,500
    !     write(30, *) i**2  ! Write squares of numbers from 1 to 500
    ! end do
    ! close(30)

    ! ! Now we will overwrite the file with new content
    ! print *, 'Enter the number of elements to write to the file (will replace existing content): '
    ! read(*,*) n

    ! open(unit = 30, file = 'Qs4.txt', status = 'replace', action = 'write')
    ! do i = 1, n
    !     write(30, '(I0)') i  ! Write numbers from 1 to n
    ! end do
    ! close(30)



    !! Question 5: Open a file for appending and add a new line.

    ! implicit none
    ! integer :: i, n

    ! open(unit = 40, file = 'Qs5.txt', status = 'unknown', action = 'write')
    ! do i = 1, 5
    !     write(40, '(I0)') i  ! Write numbers from 1 to 5
    ! end do
    ! close(40)

    ! open(unit = 40, file = 'Qs5.txt', status = 'old', action = 'write', position = 'append')
    
    ! write(40, *) 'Whatever we what to write'  ! Append a new line to the file
    
    ! close(40)


    !! Question 6: Read and display line-by-line from a file.

    ! implicit none
    ! integer :: i, n, j
    ! character(len=100) :: line

    !! Making a dummy file to read from
    ! open(unit = 50, file = 'Qs6.txt', status = 'unknown', action = 'write')
    ! do j = 1, 50
    !     write(50, '(A)') 'This is a line '
    ! end do
    ! close(50)


    ! ! Open the file for reading
    ! ! Assuming the file 'Qs6.txt' already exists with some content
    ! print *, 'Enter the number of lines to read from the file: '
    ! read(*,*) n

    ! open(unit = 50, file = 'Qs6.txt', status = 'old', action = 'read')
    ! do i = 1, n
    !     read(50, '(A)') line  ! Read a line from the file
    !     print *, 'Line ', i, ': ', trim(line)  ! Display the line
    ! end do
    ! close(50)


    !! Question 7: Write a 5x5 matrix to a file and then read it back.

    ! implicit none
    ! integer :: i, j
    ! real :: matrix(5, 5)

    ! ! Initialize the matrix with some values
    ! do i = 1, 5
    !     do j = 1, 5
    !         matrix(i, j) = i * j  ! Example values: product of indices
    !     end do
    ! end do

    ! ! Write the matrix to a file
    ! open(unit = 60, file = 'matrix.txt', status = 'unknown', action = 'write')
    ! do i = 1, 5
    !     do j = 1, 5
    !         write(60, '(F6.2)', advance='no') matrix(i, j)  ! Write each element with formatted output
    !     end do
    !     write(60, *)  ! New line after each row
    ! end do
    ! close(60)

    ! ! Read the matrix back from the file
    ! print *, 'The matrix read from the file is:'
    ! open(unit = 60, file = 'matrix.txt', status = 'old', action = 'read')
    ! do i = 1, 5
    !     do j = 1, 5
    !         read(60, '(F6.2)', advance='no') matrix(i, j)  ! Read each element with formatted input
    !         write(*, '(F6.2)', advance='no') matrix(i, j)  ! Display each element as it is read
    !     end do
    !     read(60, *)  ! Read the new line after each row
    !     write(*, *)  ! Print a new line after each loop for better readability
    ! end do
    ! close(60)

    

    !! Question 8: Add column headers and units in your output file.

    ! implicit none
    ! integer :: i 

    ! open(unit = 80, file = 'Qs8.txt', status = 'unknown', action = 'write')
    ! write(80, '(A)') "Time(s)    X-Position(m)      Y-Position(m)"

    ! do i = 1, 10
    !     write(80, '(I4, 12X, I4, 12X, I4)', advance = 'no') I, I**2, I**3
    !     write(80,*)
    ! end do
    ! close(80)


    !! Question 9: Implement file error checking using iostat.

    !!! WHAT IS IOSTAT??
    ! The iostat= specifier in Fortran is used in open, read, and write statements to:
    ! 1. Capture errors (like file not found, permission denied, bad input),
    ! 2. Prevent program crashes, and
    ! 3. Let you handle I/O failures gracefully.
    !! How iostat works:
    ! integer :: ios
    ! open(unit=10, file='data.txt', iostat=ios)
    ! if (ios /= 0) then
    !     print *, 'Error opening file. IOSTAT =', ios
    !     stop
    ! endif
    ! if ios == 0, everthing worked
    ! If ios /= 0, something went wrong, and ios tells you what.

    ! implicit none

    ! integer :: ios, value

    ! open(unit = 90, file = 'missing.txt', status = 'old', action = 'read', iostat = ios)
    ! if (ios /= 0) then
    !     print '(A39I0)', 'There is an error with the error code: ', ios
    ! else
    !     print *, 'File opened successfully!!'    
    ! end if

    ! ! Attempt to read a value
    ! read(90, *, iostat=ios) value
    ! if (ios /= 0) then
    !     print *, 'Error reading from file.'
    !     print *, 'IOSTAT error code:', ios
    ! else
    !     print *, 'Value read from file =', value
    ! endif
    ! close(90)
 

    !! Question 10: Read in a dataset where values are comma-separated (CSV-style parsing using read).

    !!!**** FIRST LET'S MAKE A CSV FILE *********!!!
    implicit none
    integer :: i, ios
    real :: x, y, a, b
    character(len = 100) :: line

    open(unit=100, file='Qs10_output.csv', status='replace', action='write')

    ! Write header
    ! write(100, '(A)') 'X,Y'       !! This code can't read a file with a character header as it is made only to read numbers.

    ! Write values
    do i = 1, 10
        x = real(i)
        y = x**2
        write(100, '(F6.2,1X,A,1X,F6.2)') x, ',', y
    end do

    close(100)
    print *, 'CSV file "Qs10_output.csv" created.'

    !!!***** READING FROM CSV *******!!!

    open(unit = 100, file='Qs10_output.csv', status = 'old', action = 'read', iostat = ios)
    if (ios /= 0 ) then
        print *, 'There is error, code:', ios
        stop
    end if

    print *, 'Reading the file data'
    print '(A1,12X,A1)', 'X','Y'

    do
        read(100, '(A)', iostat = ios) line
        if (ios /= 0) then
            print *, 'Error in reading the line, code:', i
            exit
        end if 

    ! Replace comma with space so we can use normal read
    call replace_comma_with_spaces(line)

    ! Parse the line into two real numbers
    read(line, *) a, b
    print '(F6.2, 3X, F6.2)', a, b
    end do
    close(100)

    contains
        subroutine replace_comma_with_spaces(str)
            character(len=*), intent(inout) :: str
            integer :: j
            do j = 1, len_trim(str)
                if (str(i:i) == ',') then
                    str(i:i) = ' '
                end if
            end do
        end subroutine replace_comma_with_spaces
end program file_io_example


