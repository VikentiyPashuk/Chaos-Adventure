program Chaos_difffun
    implicit none
    integer :: n
    real :: x, r
    character(len=10) :: arg_r

    ! Set initial condition
    x = 0.4

    ! Accept command-line argument for r
    call get_command_argument(1, arg_r)
    read(arg_r, *) r
    
    ! Loop over r values
  !  do while (0 <= r)
        do n = 1, 1100
            x = x * exp(r* (1.0 - x)) ! Update x using the new function
            if (n > 1000) then  ! Only print after reaching a certain iteration
                print *, r, x
            endif
        end do
    !    r = r + 0.01
  !  end do

end program Chaos_difffun

