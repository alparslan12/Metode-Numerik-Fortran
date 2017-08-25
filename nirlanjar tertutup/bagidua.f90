program bagidua
! Program untuk mencari nilai akar dengan metode tertutup bagidua
! Pustaka : Munir, Renaldi, 2008,'Metode Numerik revisi', Bandung:Informatika
! hasan@2017
implicit none

include 'parameter-nirlanjar.inc'

real:: a,b, c, fungsi,r,lebar
character(len=8) :: selang
integer :: iter

open(unit=50,file='bagidua.out',access='sequential',status='unknown')

! nilai titik tengah metode bagi dua
c=(a+b)/2

! batas kanan dan kiri
a=0;b=1

! Jumlah lelaran yang dibutuhkan dalam selang kanan dan kiri
r=(log(abs(b-a))-log(epsilon1))/log(2.0)
r=nint(r)

write(50,*) '---------------------------------------------------------------------------------'
write(50,*)
write(50,*) 'iter     a        c        b       f(a)      f(c)      f(b)    selanng    lebar  '
write(50,*)
write(50,*) '---------------------------------------------------------------------------------'
iter=0
do while (abs(a-b)>epsilon1)! .or. fungsi(c)>epsilon2)
 iter=iter+1
 c=(a+b)/2
 if (fungsi(a)*fungsi(c)<0) then
   lebar=abs((a-b)/2)
   selang='[a,c]'
   write(50,20) iter,a,c,b,fungsi(a),fungsi(c),fungsi(b),selang,lebar
   b=c;
   else 
   lebar=abs((a-b)/2)
   selang='[c,b]'
   write(50,20) iter,a,c,b,fungsi(a),fungsi(c),fungsi(b),selang,lebar
   a=c
 end if
20 format (1i3,2x,3f9.6,3f10.6,3x,1a5,3x,1f9.6)
end do
write(50,*)
write(50,*) 'Jumlah lelaran yang memungkinkan adalah', r
end 
