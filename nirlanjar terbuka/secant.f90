! Program penyelesaian persamaan nirlanjar dengan metode terbuka
! menggunakan Secant
! Pustaka : Munir, Renaldi, 2008,'Metode Numerik revisi', Bandung:Informatika
! hasan@2017

program newra
implicit none

real :: eps1,eps2,f,x1,x0,x,xs
integer :: i, nmaks


eps1=0.000001
eps2=0.000000001
i=0
x0=0.5
x1=1
nmaks=30
print*, '------------------------------'
print*, 'iter    x[r]     |x[r+1]-x[r]|'
print*, '------------------------------'
do while (abs(x-xs)>eps1 .and. i<nmaks)
 i=i+1
 xs=x1
 x=xs-f(x1)*(x1-x0)/(f(x1)-f(x0))
 x0=x1
 x1=x
 write(*,22) i,xs,abs(x-xs)
 if (abs(f(x1)-f(x0))<eps2) then
 stop
 end if 
 end do
 22 format (x,1i2,2x,1f10.7,4x,1f10.7)
end 

function f(x)
implicit none
real :: f,x
f=exp(x)-5*x**2
end 
