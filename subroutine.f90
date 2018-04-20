! this is a program demonstrating a simple subroutine
! note intent(in) and intent(out) calls
program sub_example
    implicit none

    integer :: ibuf, result

    write (*,'(a)',advance="no") "hello, integer please: "
    read (*,*) ibuf
    call return_add_one(ibuf,result)
    write (*,'(a)',advance="no") "one added: "
    write (*,*) result

    contains

    subroutine return_add_one(some_int, result)
        
        ! dummy argument (explicit definition)
        integer, intent(in) :: some_int ! explicit definition no side effect
        integer, intent(out) :: result  ! explicit definition modifiable
        
        ! local variable
        integer :: one = 1
        
        ! some_int = 1 + 1              ! this line causes an error
        result = some_int + one
        return
        
    end subroutine return_add_one

end program sub_example