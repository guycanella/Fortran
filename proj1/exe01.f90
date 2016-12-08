PROGRAM exe01
!
IMPLICIT NONE
!
!
REAL    ::  l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,s1,s2,s3,s4,A1,A2,A3,A4,V
TYPE    ::  point
    REAL    ::  x,y,z
END TYPE point
!
TYPE(point) ::  p1,p2,p3,p4,q2,q3,q4,qAux
READ *, p1%x,p1%y,p1%z
READ *, p2%x,p2%y,p2%z
READ *, p3%x,p3%y,p3%z
READ *, p4%x,p4%y,p4%z
!
! CALCULATE THE EDGES OF THE 1ST TRIANGLE
l1  =   SQRT((p2%y - p1%y)**2 + (p2%x - p1%x)**2 + (p2%z - p1%z)**2)
l2  =   SQRT((p3%y - p1%y)**2 + (p3%x - p1%x)**2 + (p3%z - p1%z)**2)
l3  =   SQRT((p3%y - p2%y)**2 + (p3%x - p2%x)**2 + (p3%z - p2%z)**2)
!
! CALCULATE THE EDGES OF THE 2ND TRIANGLE
l4  =   SQRT((p4%y - p2%y)**2 + (p4%x - p2%x)**2 + (p4%z - p2%z)**2)
l5  =   SQRT((p3%y - p4%y)**2 + (p3%x - p4%x)**2 + (p3%z - p4%z)**2)
l6  =   SQRT((p3%y - p2%y)**2 + (p3%x - p2%x)**2 + (p3%z - p2%z)**2)
!
! CALCULATE THE EDGES OF THE 3RD TRIANGLE
l7  =   SQRT((p4%y - p2%y)**2 + (p4%x - p2%x)**2 + (p4%z - p2%z)**2)
l8  =   SQRT((p1%y - p4%y)**2 + (p1%x - p4%x)**2 + (p1%z - p4%z)**2)
l9  =   SQRT((p1%y - p2%y)**2 + (p1%x - p2%x)**2 + (p1%z - p2%z)**2)
!
! CALCULATE THE EDGES OF THE 4TH TRIANGLE
l10 =   SQRT((p4%y - p1%y)**2 + (p4%x - p1%x)**2 + (p4%z - p1%z)**2)
l11 =   SQRT((p3%y - p4%y)**2 + (p3%x - p4%x)**2 + (p3%z - p4%z)**2)
l12 =   SQRT((p1%y - p3%y)**2 + (p1%x - p3%x)**2 + (p1%z - p3%z)**2)
!
! CALCULATE THE AREAS: HERON FORMULA
s1      =   (l1+l2+l3)/2
A1      =   SQRT(s1*(s1-l1)*(s1-l2)*(s1-l3))
!
s2      =   (l4+l5+l6)/2
A2      =   SQRT(s2*(s2-l4)*(s2-l5)*(s2-l6))
!
s3      =   (l7+l8+l9)/2
A3      =   SQRT(s3*(s3-l7)*(s3-l8)*(s3-l9))
!
s4      =   (l10+l11+l12)/2
A4      =   SQRT(s4*(s4-l10)*(s4-l11)*(s4-l12))
!
! CALCULATE THE VOLUME OF THE TETRAHEDRON
q2%x    =   p2%x - p1%x
q2%y    =   p2%y - p1%y
q2%z    =   p2%z - p1%z
!
q3%x    =   p3%x - p1%x
q3%y    =   p3%y - p1%y
q3%z    =   p3%z - p1%z
!
q4%x    =   p4%x - p1%x
q4%y    =   p4%y - p1%y
q4%z    =   p4%z - p1%z
!
qAux%x  =   q2%y*q3%z - q2%z*q3%y
qAux%y  =   q2%z*q3%x - q2%x*q3%z
qAux%z  =   q2%x*q3%y - q2%y*q3%x
!
V       =   (ABS(q4%x*qAux%x + q4%y*qAux%y + q4%z*qAux%z))/6
!
PRINT *, A1
PRINT *, A2
PRINT *, A3
PRINT *, A4
PRINT *, V
END PROGRAM exe01
