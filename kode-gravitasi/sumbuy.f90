subroutine sumbuy(jy,vnol,pi,sudut,g,t)
implicit none
real :: jy,t
real :: vnol,g,pi,sudut
jy=vnol*sin(pi*sudut/180)*t-0.5*g*t**2
end 
