! Program untuk mengalokasikan memori
! berkaitan dengan penentuan besar larik
! oleh user
! hasan@2017

program alokasi_memori
implicit none

! deklarasi variabel
!real, allocatable, dimension(:) :: matriks > bisa juga menggunakan ini
real, allocatable :: matriks(:)
integer :: col, i

print*,
print*,'======================================='
print*,
print*,'**Program untuk Alokasi Memori Larik **'
print*,
print*,'======================================='
print*,
print*, 'masukkan jumlah ukuran dari larik'
read *, col
print*,
print*, 'Jumlah larik :',col

! alokasi memori
allocate(matriks(col))
print*,

! memasukkan data elemen larik
do i=1,col
 print "(1a31,x,1i2)", 'masukkan angka elemen larik ke',i
 read (*,*) matriks(i)
 end do
print*,
print*, 'larik yang terbentuk'
print*,
! mencetak elemen larik di layar 
do i=1,col
 print "(1a9,x,1i3,x,1a10,x,1f5.2)", 'larik ke',i,'adalah :',matriks(i)
 end do 
 
!menghapus alokasi memori
deallocate(matriks)
end 
