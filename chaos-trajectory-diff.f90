program IterationDifference
    implicit none
    real :: r, x0, x0_plus_epsilon, x, x_plus_epsilon
    integer :: n

    ! Parameters
    r = 0.91
    x0 = 0.5
    x0_plus_epsilon = 0.5001

    ! Initialize x and x_plus_epsilon
    x = x0
    x_plus_epsilon = x0_plus_epsilon

    ! Iterate until the difference exceeds 10%
    n = 0
    do while (abs(x - x_plus_epsilon) <= 0.1 * x_plus_epsilon)
        x = 4.0 * r * x * (1.0 - x)
        x_plus_epsilon = 4.0 * r * x_plus_epsilon * (1.0 - x_plus_epsilon)
        n = n + 1
    end do

    ! Output the number of iterations
    print *, "For r = 0.91:"
    print *, "Number of iterations needed for the difference to exceed 10%:", n

    ! Parameters for r = 0.88
    r = 0.90
    x0 = 0.5
    x0_plus_epsilon = 0.5001
    
    x = x0
    x_plus_epsilon = x0_plus_epsilon

    ! Reset iteration count
    n = 0

    ! Iterate until the difference exceeds 10%
    do while (abs(x - x_plus_epsilon) <= 0.1 * x_plus_epsilon)
        x = 4.0 * r * x * (1.0 - x)
        x_plus_epsilon = 4.0 * r * x_plus_epsilon * (1.0 - x_plus_epsilon)
        n = n + 1
    end do

    ! Output the number of iterations
    print *, "For r = 0.88:"
    print *, "Number of iterations needed for the difference to exceed 10%:", n

end program IterationDifference

