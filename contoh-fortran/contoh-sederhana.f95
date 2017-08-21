! materi sederhana Fortran
! hasan@2017

program Belajar_Fortran
implicit none
! contoh penulisan program
! masih proram kasar
! belum ada input maupun output yang terformat
real :: jawaban, x, y, pi
real :: a,b
integer :: i,j
integer :: c
character :: nama*15, depan*15
! Warning: CHARACTER expression will be truncated in assignment (6/8) at (1)
! terjadi saat ruang yang tersedia bagi karakter kurang
! deklarasi harus diatas perintah lain
print*,
print*,  '-------------------------------'
print *, 'Materi Input / Output Sederhana'
print*,  '-------------------------------'

x=90
pi=3.14
y=4.90
jawaban=(2*x+y**2)/5.6*(x-5*y)
print*, 'Jawaban dari (2*x+y**2)/5.6*(x-5*y) adalah ', jawaban
jawaban=x**(y*2)
print*, 'Jawaban dari x**(y**2) adalah ', jawaban
call sleep(2)
print*, 'sinus dari ',x,' adalah ',sin(x*pi/180)
print*, 'cosinus dari ',x,' adalah ',cos(x*pi/180)
print*, 'tangen dari ',pi,' adalah ',tan(pi*pi/180)
print*, 'absolute dari ',x,' adalah ',abs(x)
print*, 'akar dari ',x,' adalah ',sqrt(x)
print*, 'eksponen dari ',pi,' adalah ',exp(pi)
print*, 'logaritma dari ',x,' adalah ',log(x)
print *,
print*,  '-------------------------'
print *, 'Materi Character / String'
print*,  '-------------------------'
print*,
print*, 'Namamu siapa?'
nama='muhammad'
depan='mifta hasan'
print*, 'Namaku adalah ', nama, depan
print*,
print*,  '-------------------------'
print *, 'Materi pilihan if/else if'
print*,  '-------------------------'
print*,
a=3.2
b=9.3
print*, 'pilihlah nomer yang ada di bawah ini'
print*, '1. Penjumlahan'
print*, '2. pengurangan'
read*, c
!if (c/=0.and.c<=3) then
if (c/=0 .and. c>=9)then
 print *, 'jumlah dari',a,' dan ',b,' adalah ',a+b
!else if (c==4.or.c>=5) then
else if (c>0 .and. c<9)then
 print *, 'pengurangan dari',a,' dan ',b,' adalah ',a-b
else
 print*, 'mohon dicoba lagi'
end if
print*,
print*,  '--------------------------'
print *, 'Materi looping dan kondisi'
print*,  '--------------------------'
print*,
do c=-20,20,2
 jawaban=c/3.0

 if (c>=4 .and. c<=10) then
  print *, 'oooh nooo', jawaban
  else
   print *, 'angka ke',c, jawaban
  end if

  call sleep(1)
end do
print*,
print*,  '--------------------------'
print *, 'Materi looping dan kondisi'
print*,  '--------------------------'
print*,
print *, '          x           y            z' 
do i = 1,2
 do j = 1,4
  jawaban = i/j
  print *, i,j,jawaban
 end do
end do
end

