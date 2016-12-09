
PROGRAM exe03
!
IMPLICIT NONE
!
TYPE    ::  vector
    REAL    ::  x,y,z
END TYPE vector
!
TYPE(vector)    ::  vec1,vec2,vec3
!
OPEN(unit=10,file="vet_in.dat")
READ(10,*)    vec1%x,vec1%y,vec1%z
READ(10,*)    vec2%x,vec2%y,vec2%z
READ(10,*)    vec3%x,vec3%y,vec3%z
!
PRINT *, vec1%x
PRINT *, vec1%y
PRINT *, vec1%z
!
PRINT *, vec2%x
PRINT *, vec2%y
PRINT *, vec2%z
!
PRINT *, vec3%x
PRINT *, vec3%y
PRINT *, vec3%z
!
END PROGRAM exe03
