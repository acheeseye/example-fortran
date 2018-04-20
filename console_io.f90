! this is a program demonstrating how to dynamically allocate a block
program console_io
    
    character, allocatable :: name
    character(len=5) :: namebuf = "jason"
    
    write (*,*) "*********character array format manipulation"
    write (*,*) namebuf             ! implicit new line, free format
    write (*,'(a)') namebuf         ! implicit new line, defined format
    write (*,'(a5)') namebuf
    write (*,'(a4)') namebuf
    write (*,'(a3)') namebuf
    write (*,'(a2)') namebuf
    write (*,'(a1)',advance='no') namebuf   ! no new line
    print*                                  ! new line
    print*
    
    write (*,*) "*********integer format manipulation"    
    write (*, '(i5)') 12
    write (*, '(i5.3)') 12
    write (*, '(i5.5)') 12
    print*
    
    write (*,*) "*********real/float format manipulation"        
    write (*, '(f5.3)') 3.3029358
    write (*, '(f5.5)') 3.3029358           ! this has trouble because
                                            ! it cannot display more than 5
                                            ! characters, and 5 values after
                                            ! decimal require width of 7 total
    write (*, '(es15.3)') 12351239.12373
    
end program console_io