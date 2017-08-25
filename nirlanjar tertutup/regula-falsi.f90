program regulafalsi
! Program untuk mencari nilai akar dengan metode tertutup Regula Falsi
! Pustaka : Munir, Renaldi, 2008,'Metode Numerik revisi', Bandung:Informatika
! hasan@2017
implicit none

include 'parameter-nirlanjar.inc'

real:: a,b, c, fungsi,r,lebar
character(len=8) :: selang
integer :: iter

open(unit=50,file='regula.out',access='sequential',status='unknown')

! nilai titik tengah metode bagi dua
c=b-fungsi(b)*(b-a)/(fungsi(b)-fungsi(a))

! batas kanan dan kiri
a=0;b=1

write(50,*) '---------------------------------------------------------------------------------'
write(50,*)
write(50,*) 'iter     a        c        b       f(a)      f(c)      f(b)    selanng    lebar  '
write(50,*)
write(50,*) '---------------------------------------------------------------------------------'
iter=0
do while (abs(a-b)>epsilon1)
 iter=iter+1
 c=b-fungsi(b)*(b-a)/(fungsi(b)-fungsi(a))
 if (abs(fungsi(c))<epsilon2) then
     a=c
     b=c
 else
  if (fungsi(a)*fungsi(c)<0) then
   lebar=abs((a-c))
   selang='[a,c]'
   write(50,20) iter,a,c,b,fungsi(a),fungsi(c),fungsi(b),selang,lebar
   b=c;
   else 
   lebar=abs((c-b))
   selang='[c,b]'
   write(50,20) iter,a,c,b,fungsi(a),fungsi(c),fungsi(b),selang,lebar
   a=c
  end if
 end if
20 format (1i3,2x,3f9.6,3f10.6,3x,1a5,3x,1f9.6)
end do

end 
