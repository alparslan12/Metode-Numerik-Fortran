program regulafalsimod
! Program untuk mencari nilai akar dengan metode tertutup Regula Falsi yang Diperbaiki
! Pustaka : Munir, Renaldi, 2008,'Metode Numerik revisi', Bandung:Informatika
! hasan@2017
implicit none

include 'parameter-nirlanjar.inc'

real:: a,b, c, fungsi,r,lebar,fa,fb,cc
character(len=8) :: selang
integer :: iter,mandek_kiri, mandek_kanan

open(unit=50,file='regula-modif.out',access='sequential',status='unknown')

! batas kanan dan kiri
a=0;b=1

! nilai titik tengah metode bagi dua
c=b-(fungsi(b)*(b-a)/(fungsi(b)-fungsi(a)))

write(50,*) '---------------------------------------------------------------------------------'
write(50,*)
write(50,*) 'iter     a        c        b       f(a)      f(c)      f(b)    selanng    lebar  '
write(50,*)
write(50,*) '---------------------------------------------------------------------------------'
iter=0
fa=fungsi(a);fb=fungsi(b)
mandek_kiri=1;mandek_kanan=1
do while (abs(a-b)>epsilon1 .or. abs(fungsi(c))>epsilon2)
 
 iter=iter+1
 c=b-(fb*(b-a)/(fb-fa))

  if (fungsi(a)*fungsi(c)<0) then
   lebar=abs((a-c))
   selang='[a,c]'
   write(50,20) iter,a,c,b,fungsi(a),fungsi(c),fungsi(b),selang,lebar
   b=c;
   fb=fungsi(c)
   mandek_kiri=mandek_kiri+1
   mandek_kanan=0
   if (mandek_kiri>1) then
    fa=fa/2
    end if
   else 
   lebar=abs((c-b))
   selang='[c,b]'
   write(50,20) iter,a,c,b,fungsi(a),fungsi(c),fungsi(b),selang,lebar
   a=c
   fa=fungsi(c)
   mandek_kanan=mandek_kanan +1
   mandek_kiri=0
   if (mandek_kanan>1) then
    fb=fb/2
    end if
  end if
! end if
20 format (1i3,2x,3f9.6,3f10.6,3x,1a5,3x,1f9.6)
end do

end 
