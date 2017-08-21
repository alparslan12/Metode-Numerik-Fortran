program gravitasi
implicit none

! mengambil parameter 
include 'gravitasi.inc'

! deklarasi variabel
real, dimension(ukuran) :: jy,t,jx
character(len=20) :: judul
integer :: i
real, parameter :: pi=3.141593
real, parameter :: vnol=20.0
real, parameter :: sudut=45


! persiapan data
open(unit=11,file='dgraf.inp',access='sequential',status='old')
open(unit=12,file='dkeluar.dat',access='sequential',status='unknown')

! membaca judul data
read(11,*) judul
write(*,*) 'Pembacaan '//judul
print*, '  Waktu (s)'
print*,

! membaca data waktu
read(11,*) t
21 format(5x,1f4.2)

! mencetak di layar
do i=1,ukuran
 write(*,21), t(i)
end do

! Persamaan gravitasi
do i=1,ukuran
! jy(i)=vnol*sin(pi*sudut/180)*t(i)-0.5*g*t(i)**2
 call sumbuy(jy(i),vnol,pi,sudut,g,t(i))
! jx(i)=vnol*cos(pi*sudut/180)*t(i)
 call sumbux(jx(i),vnol,pi,sudut,t(i))
end do

! mencetak hasil di layar
print*, 
print*,
print*, '  Hasil perhitungannya adalah'
print*, '  Ketinggian       jarak'
print*, '     (m)            (m)'
print*,
do i=1,ukuran
 write(*,22), jy(i),jx(i)
end do
22 format(5x,1f5.2,10x,1f5.2)

!mencetak di file output
write(12,*) ' #Hasil perhitungannya adalah'
write(12,*) ' #Ketinggian       jarak'
write(12,*) ' #   (m)            (m)'
do i=1,ukuran
 write(12,22), jy(i),jx(i)
end do

end 
