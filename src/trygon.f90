!********************************************************************!
!********************************************************************!
!                                                                    !
!   Trygon -- Main program for fully featured FR solver              !
!                                                                    !
!********************************************************************!
!                                                                    !
!   Version history:                                                 !
!                    Program created: 12Apr23                - raw54 !
!                                                                    !
!********************************************************************!
!                                                                    !
!   Known issues:                                                    !
!                    No known issues.                        - raw54 !
!                                                                    !
!********************************************************************!
!********************************************************************!
! 
!   Doxygen section: 
! 
!>  @author 
!>  Rob Watson 
! 
!>  @brief 
!>  Trygon is a flux reconstruction based solver which is designed to
!>  make use of the OP2 unstructured parallelisation libraries.
! 
!********************************************************************!
!********************************************************************!

program Trygon

   ! Declare modules

   use precision
   use mod_Welcome

   ! Turn off implicit typing
   
   implicit none

   ! Say hello

   call WL_hello()

   ! Read in the input file

!   call IP_getInput()

   ! Say goodbye

   call WL_goodbye()

end program Trygon

!********************************************************************!
!********************************************************************!
!                                                                    !
!   End of program Trygon                                          !
!                                                                    !
!********************************************************************!
!********************************************************************!


