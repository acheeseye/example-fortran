! this is a program demonstrating user defined types
! note that variable `name` is statically sized
program derive_type
    
    type :: item
        character (len=*) :: name
        integer :: price
    end type item
    
    type(item) :: item0
    item0%name = "apple"
    item0%price = 5
    
    print*, item0%name, item0%price
    
end program derive_type