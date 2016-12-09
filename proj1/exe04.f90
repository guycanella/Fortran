
PROGRAM exe04
!
IMPLICIT NONE
!
INTEGER ::  N,i,j,x,valor
!
READ    *, N
OPEN(unit=10,file="primos_out.dat")
IF (N .EQ. 1) THEN 
    WRITE (10,*) N 
END IF
DO i=N,1,-1
    valor = 0
    DO j=i,1,-1
        x   =   MOD(i,j)
        IF (x .EQ. 0) THEN
            valor = valor + 1
        END IF
    END DO
    IF (valor .EQ. 2) THEN
        WRITE (10,*) i
    END IF
END DO
CLOSE(10)
END PROGRAM exe04
