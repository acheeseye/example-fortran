! this is a program demonstrating built in arrays
! arrays may support up to 7 dimensions
! arrays support negative indicies
program array
    implicit none
    
    integer, dimension(5) :: a1
    integer, dimension(2:5) :: a2
    integer, dimension(-5:5) :: a3 ! valid--11 items
    
    integer :: i
    
    a1(1) = 1
    a1(2) = 2
    a1(3) = 3
    a1(4) = 4
    a1(5) = 5
    
    do i = 1, 5
        print*, "element index", i, "==", a1(i)
    end do
    
end program array