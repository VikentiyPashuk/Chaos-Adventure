program Chaos
    implicit none
    integer :: n, i, ierr
    real :: x, r
    character(len=20) :: arg_r
    
    x=0.4

    ! Check the number of command line arguments
    if (command_argument_count() /= 1) then
        print *, "Usage: ./chaos <r_value>"
        stop
    endif

    ! Get the command line arguments for r and x
    call get_command_argument(1, arg_r, ierr)

    ! Convert command line arguments to real numbers
    read(arg_r, *) r
    ! Loop over n
    do n = 0, 60
    	print*, n, x
        x = x*exp(r *(1.0 - x))
    end do

end program Chaos

