program IterateFunc
    implicit none
    
    real :: x, r, fx
    integer :: num_iterations
    real :: res ! Declare res here to avoid implicit typing
    real :: r_step
    character(len=128) :: arg_r, arg_num
    
    ! Check the number of command line arguments
    if (command_argument_count() /= 2) then
        print *, "Usage: ./chaos6 <r value> <number of iterations>"
        stop
    endif
    
    ! Accept command line arguments
    call get_command_argument(1, arg_r)
    call get_command_argument(2, arg_num)
    
   ! r = 0.85
    x = 0.4

        ! Accept command line arguments

    read(arg_r, *) r
    read(arg_num, *) num_iterations
    
    do while (x <= 10)
        call fun(x, r, fx, num_iterations)
        print*, x, fx
        x = x + 0.001
    end do
    
contains
    
    subroutine fun(x_val, r_val, res, num_iter)
        implicit none
        real, intent(in) :: x_val, r_val
        real, intent(out) :: res
        integer, intent(in) :: num_iter
        integer :: i
        
        ! Define the function f(x) here
        res = x_val
        
        do i = 1, num_iter
            res =  res *exp(r_val * (1.0 - res))
        end do
    end subroutine fun
    
end program IterateFunc

