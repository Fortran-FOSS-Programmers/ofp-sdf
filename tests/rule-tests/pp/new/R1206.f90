!! R1206 procedure-stmt
!     is [ MODULE ] PROCEDURE [ :: ] procedure-name-list

10 MODULE PSM

11 INTERFACE PSI
   ! First without the optional MODULE
   PROCEDURE a
12   PROCEDURE :: b, c
   
   ! Now with the MODULE
   MODULE PROCEDURE :: d
13   MODULE PROCEDURE e, f
14 END INTERFACE

15 CONTAINS
  SUBROUTINE a
  END SUBROUTINE
16  SUBROUTINE b(i)
  END SUBROUTINE
  SUBROUTINE c(i,j)
  END SUBROUTINE
  SUBROUTINE d(x)
  END SUBROUTINE
  SUBROUTINE e(x,y)
17  END SUBROUTINE
  SUBROUTINE f(x,y,z)
  END SUBROUTINE
18 END MODULE


