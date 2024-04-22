program Chaos_difffun1
    implicit none
    integer :: n
    real :: x, r

    ! Set initial condition
    x = 0.4

    ! Accept command-line argument for r
    r=1.8
    ! Loop over r values
    do while (r <= 4)
        do n = 1, 1100
            x = x * exp(r* (1.0 - x)) ! Update x using the new function
            if (n > 1000) then  ! Only print after reaching a certain iteration
                print *, r, x
            endif
        end do
       r = r + 0.001
    end do

end program Chaos_difffun1

