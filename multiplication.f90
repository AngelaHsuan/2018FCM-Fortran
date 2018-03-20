subroutine multiplication
    implicit NONE
    
    integer*8  :: i,j,k
    integer :: Time_Start,Time_End,Rate
    real*8 :: Time_Exe_1,Time_Exe_2
    
    j = 3
    
    !With no multiplication--------------------------------------------------------
    call system_clock(Time_Start,Rate)
    do i = 1,1D9
        
    end do
    call system_clock(Time_End,Rate)
    Time_Exe_1 = (real(Time_End)-real(Time_Start))/real(Rate)
    Write(*,*)'Computational time without multiplication(sec):', Time_Exe_1
    write(*,*) '------------------------------------------------------------'
    
    !With multiplication------------------------------------------------------------
    call system_clock(Time_Start,Rate)
    do i = 1,1D2
        j = j*2
    end do
    call system_clock(Time_End,Rate)
    Time_Exe_2 = (real(Time_End)-real(Time_Start))/real(Rate)
    Write(*,*)'Computational time without multiplication(sec):', Time_Exe_2
    write(*,*) '------------------------------------------------------------'
    write(*,*)'Time of one multiplication(s) :',(Time_Exe_2 - Time_Exe_1)/1D9
    write(*,*) '------------------------------------------------------------'
    
    write(*,*)j
    
end subroutine multiplication