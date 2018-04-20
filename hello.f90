program hello
    implicit none

    ! declarations MUST come first
    integer :: a                    ! 4 byte integer
    integer (kind = 8) :: b         ! 8 byte integer
    real, parameter :: pi = 3.14    ! parameter is const
    integer :: exp_this = 2 ** 3    
    real :: cvt_to_int = 2.5        
    logical :: is_today = .true.
    real :: input_buf, input_buf2
    integer :: int_buf
    logical :: is_one, is_one_and_two
    character :: char_buf

    ! do i = beg, end, step
    !   ...
    !   if (...) 
    !       exit
    !   else
    !       cycle
    !   endif
    ! end do

    ! call random_seed()
    ! call random_number()
    
    ! functions
    cvted_trunc = int(cvt_to_int)
    cvted_round = nint(cvt_to_int)

    
    ! i/o
    print*, "hello, world!"
    write (*,*)                     ! new line
    print*, "enter an integer:"
    read (*,*) int_buf
    select case (int_buf)
        case (0:9)
            print*, ">>>positive single digit"
        case (10:99)
            print*, ">>>positive double digit"
        case (100:999)
            print*, ">>>positive triple digit"
        case (1000,9999)
            print*, ">>>1000 or 9999"
        case default
            print*, ">>>default case reached"
    end select
    print*, "press enter to continue"
    read (*,*) !char_buf
    write (*, advance="no"), "no newline input:"
    read (*,*) 
    print*, "press enter to continue"    
    write (*,*) "this is pi:", pi
    write (*,*) "is it today?", is_today
    write (*,*) "2 ** 3 == ", exp_this
    write (*,*) "2.5 => integer(trunc):", cvted_trunc
    write (*,*) "2.5 => integer(round):", cvted_round
    print*
    write (*,*) "enter a real number:"
    read (*,*) input_buf
    write (*,*) ">>>you entered:", input_buf
    is_one = (1.0 == input_buf)
    write (*,*) ">>>is_one returned:", is_one
    if (is_one) then
        print*, "enter 1 and 2"
        read*, input_buf, input_buf2
        is_one_and_two = ((1.0 == input_buf) .and. (2.0 == input_buf2))
        if (is_one_and_two) then
            print*, ">>>you entered one and two!"
        else
            print*, ">>>you did not enter one and two"
        endif
    end if
    print*                          ! new line
    print*, "bye, world!"

end program hello