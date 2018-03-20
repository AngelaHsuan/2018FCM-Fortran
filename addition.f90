subroutine addition
    implicit NONE
    
    integer i,j,k
    integer Time_Start,Time_End,Rate
    real*8 :: Time_Exe_1,Time_Exe_2
    
    j = 0
    
    !With no addition--------------------------------------------------------
    call system_clock(Time_Start,Rate)
    do i = 1,1D9
        
    end do
    call system_clock(Time_End,Rate)
    Time_Exe_1 = (real(Time_End)-real(Time_Start))/real(Rate)
    Write(*,*)'Computational time without addition(sec):', Time_Exe_1
    write(*,*) '------------------------------------------------------------'
    
    !With addition------------------------------------------------------------
    call system_clock(Time_Start,Rate)
    do i = 1,1D9
        j = j+1
    end do
    call system_clock(Time_End,Rate)
    Time_Exe_2 = (real(Time_End)-real(Time_Start))/real(Rate)
    Write(*,*)'Computational time with addition(sec):', Time_Exe_2
    write(*,*) '------------------------------------------------------------'
    write(*,*)'Time of one addition(s) :',(Time_Exe_2 - Time_Exe_1)/1D9
    write(*,*) '------------------------------------------------------------'
    
end subroutine addition