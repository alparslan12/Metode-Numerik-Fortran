! Program penyelesaian persamaan nirlanjar dengan metode terbuka
! menggunakan lelaran titik tetap
! Pustaka : Munir, Renaldi, 2008,'Metode Numerik revisi', Bandung:Informatika
! hasan@2017

program titik_tetap
implicit none

real, parameter :: eps=0.000001
real :: x,x0
integer :: i

x=1 ! nilai tebakan awal
i=0
print*,'iterasi       x0         x       selisih'
do while (abs(x-x0)>eps)
 i=i+1
 x0=x
 x=sqrt(exp(x0)/5) ! persamaan gubahan dari f(x)=0 diubah menjadi x=g(x), x[r+1]=g(x[r])
 write(*,55),i,x0,x,abs(x-x0)
 end do
 55 format (2x,1i3,5x,1f10.7,x,1f10.7,x,1f10.7)
end 
