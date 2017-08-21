subroutine sumbux(jx,vnol,pi,sudut,t)
implicit none
real :: jx,t
real :: vnol,pi,sudut
jx=vnol*cos(pi*sudut/180)*t
end 
