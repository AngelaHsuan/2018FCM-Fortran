subroutine sine
    implicit NONE
    
    integer i
    integer Time_Start,Time_End,Rate
    real*8 j,k
    real*8 :: Time_Exe_1,Time_Exe_2
    
    j = 1
    
    !With no sine function--------------------------------------------------------
    call system_clock(Time_Start,Rate)
    do i = 1,1D9
        
    end do
    call system_clock(Time_End,Rate)
    Time_Exe_1 = (real(Time_End)-real(Time_Start))/real(Rate)
    Write(*,*)'Computational time without sine(sec):', Time_Exe_1
    write(*,*) '------------------------------------------------------------'
    
    !With sine function------------------------------------------------------------
    call system_clock(Time_Start,Rate)
    do i = 1,1D9
        k = sind(j)
    end do
    call system_clock(Time_End,Rate)
    Time_Exe_2 = (real(Time_End)-real(Time_Start))/real(Rate)
    Write(*,*)'Computational time with sine(sec):', Time_Exe_2
    write(*,*) '------------------------------------------------------------'
    write(*,*)'Time of one sine function(s) :',(Time_Exe_2 - Time_Exe_1)/1D9
    write(*,*) '------------------------------------------------------------'
    
end subroutine sine