
PROGRAM exe02

IMPLICIT NONE

COMPLEX ::  Z,R
REAL    ::  A,N

READ *, N
READ *, Z
READ *, A

!!  CALCULATE
R   =   (Z**3 - A**2)**(1/N)

PRINT *, R

END PROGRAM exe02  
