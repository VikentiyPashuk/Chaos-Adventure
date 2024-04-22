program Chaos
    implicit none
    integer :: n
    real :: x, r

    ! Set initial condition
    x = 0.4

    ! Loop over r values
    r = 0.7
    do while (r <= 1)
        do n = 1, 10100
            x = 4.0 * r * x * (1.0 - x)
            if (n > 10000) then  ! Only print after reaching a certain iteration
                print *, r, x
            endif
        end do
        r = r + 0.001
    end do

end program Chaos

