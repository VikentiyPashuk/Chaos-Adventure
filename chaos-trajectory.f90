program Chaos
    implicit none
    integer :: n, i, ierr
    real :: x, r
    character(len=20) :: arg_r, arg_x

    ! Check the number of command line arguments
    if (command_argument_count() /= 2) then
        print *, "Usage: ./chaos <r_value> <x_initial>"
        stop
    endif

    ! Get the command line arguments for r and x
    call get_command_argument(1, arg_r, ierr)
    call get_command_argument(2, arg_x, ierr)

    ! Convert command line arguments to real numbers
    read(arg_r, *) r
    read(arg_x, *) x

    ! Loop over n
    do n = 1, 30
    	print*, n, x
        x = 4.0 * r * x * (1.0 - x)
    end do

end program Chaos

