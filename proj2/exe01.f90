
PROGRAM exe01

IMPLICIT NONE

REAL    ::  x,t,FAT,suma,EXPR,limiar
REAL,DIMENSION(:),ALLOCATABLE    ::  vec
INTEGER ::  i


READ    *,  x

! CALCULATE THE SERIE EXPANSION

suma    =   1
DO i=1,5,1
    suma    =   suma + (EXPR(REAL(i))*x**i)/(FAT(REAL(i)))
END DO

PRINT *, suma

END PROGRAM exe01

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

FUNCTION EXPR(n)

IMPLICIT NONE

INTEGER                 ::  i
REAL                    ::  t,results,EXPR
REAL, INTENT(IN)        ::  n
REAL,DIMENSION(1:10)    ::  vec

vec(1)          =   0.5
t               =   -0.5
!
DO i=2,10,1
    vec(i)  =   t
    t       =   t-1
END DO

results     =   1
DO i=1,Nint(n),1
    results =   results*vec(i)
END DO

EXPR    =   results

END FUNCTION EXPR

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

FUNCTION FAT(n)

IMPLICIT NONE

INTEGER             ::  i
REAL                ::  FAT,a
REAL, INTENT(IN)    ::  n

IF (n .EQ. 0) THEN
    FAT = 1.0
ELSE 
    a   =   n
    DO i=Nint(n)-1,1,-1
        a   =   a*i
    END DO
    FAT =   a
END IF

END FUNCTION FAT

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
