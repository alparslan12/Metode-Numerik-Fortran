! Program yang digunakan untuk mengkonfimasi
! apakah ada akar dalam selang persamaan tersebut
! hasan@2017

program konfirmasi_selang_akar
implicit none

! deklarasi variabel
real :: h,x,fx,a,b,akare,fxx
integer :: i,itere
character(len=20) :: akar

! inisialisasi parameter
h=0.01; a=-0.5; x=a
i=1
b=1.4
print*,
print*,'======================================='
print*,
print*,'**Program untuk Konfirmasi nilai akar**'
print*,
print*,'======================================='
print*,

! Menjalankan Program
do while (x<=b)
! fungsi
 fx=exp(x)-5*(x**2)
 print "(1a5,x,1i4,x,1a7,x,1f5.2,x,1a6,x,1f8.4)", 'iter', i,'selang',&
 x,'nilai',fx

 ! menentukan akar
 if (fx>=-0.01 .and. fx<=0.01) then
   akar='ada'
   fxx=fx
   akare=x
   itere=i
 end if
  i=i+1
  x=x+h
end do

! mencetak hasil akar dilayar
print*,
print*, 'apakah ada nilai akar?'
print*, akar
print*,
write(*,11) 'Terletak di iterasi',itere,'selang',akare
11 format (1a20,x,1i3,x,1a7,x,1f6.3)
write(*,12) 'Pendekatan nilai fungsi',fxx
12 format (1a24,x,1f7.5)

end 
