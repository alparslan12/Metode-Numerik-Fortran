! Program Input Output dengan file
! hasan@2017
program belajar_fortran
implicit none
! Deklarasi
real :: a,b,c,r
integer :: i
! Input Output
open(11,file='data.dat')
open(12,file='dout.dat')
read(11,*) a,b,c ! belum ada format khusus pada input
! Program eksekusi
print*,
print*, 'Nilai masukan data dari file'
print*, 'Nilai a:',a
Print*, 'Nilai b:',b
print*, 'Nilai C:',c 
print*,

! Contoh iterasi
do i=1,30
r=(a+b)/(c*rand())
	if (mod(i,2)>0) then
		write(12,*)'iterasi ke', i,'[ganjil]', r
		else
		write(12,*)'iterasi ke', i,'[genapp]', r
	end if
!	write(12,*) r
!	call sleep(1)
end do
!write(12,*) r kalo di luar end do, jadi tertulis cuman satu
end
