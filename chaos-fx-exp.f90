program rfunction
    implicit none
    real :: r, x, fx
    integer :: ierr
    character(len=20) :: arg_r

    ! Check the number of command line arguments
    if (command_argument_count() /= 1) then
        print *, "Usage: ./fx <r_value>"
        stop
    endif

    ! Get the command line argument for r
    call get_command_argument(1, arg_r, ierr)

    ! Convert command line argument to real number
    read(arg_r, *) r

    x = 0.0

    ! Iterate and print data
    do while (x <= 1.0)
        fx = x * exp(r * (1.0 - x))
        print *, x, fx
        x = x + 0.001
    end do

end program rfunction
