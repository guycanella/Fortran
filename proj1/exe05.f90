
PROGRAM exe05
!
IMPLICIT NONE
!
INTEGER                 ::  N,i,j
INTEGER,DIMENSION(1:100)   ::  vec
!
i   =   1
READ    *, N



!! CALCULATE FOR BASE 2 !!
DO WHILE (N .GT. 1)
    vec(i)  =   MOD(N,2)
    N       =   N/2
    i       =   i+1
END DO
!



WRITE (*,10,ADVANCE='no') 1
DO j=i-1,1,-1
    10 FORMAT(3i0)
    WRITE (*,10,ADVANCE='no') vec(j) 
END DO





END PROGRAM exe05

