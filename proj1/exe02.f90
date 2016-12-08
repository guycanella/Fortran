PROGRAM exe02
!
IMPLICIT NONE
!
REAL    ::  L,R,V,g,A
REAL    ::  pi=3.14159
!
READ *, L 
READ *, R
!
! VOLUME
V   =   (pi*(R*R)*L)/3
!
! AREA
g   =   SQRT(L**2 + R**2)
A   =   pi*R*(g + R)
PRINT *, V
PRINT *, A
END PROGRAM exe02
