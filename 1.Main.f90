program Main
    implicit NONE
    
    integer :: choose
    character :: again
    
    again = 'y'
    
    do while (again == 'y')
    
        write(*,*)'Which programing time do you want to know?'
        write(*,*)'(1) addition'
        write(*,*)'(2) multiplication'
        write(*,*)'(3) sine function'
        read(*,*) choose
    
        if (choose == 1) then
            call addition
        else if (choose == 2) then
            call multiplication
        else if (choose == 3) then
            call sine
        end if
        
        write(*,*)'Do you want to do it again?(y/n)'
        read(*,*)again
        
    end do
    
end program Main