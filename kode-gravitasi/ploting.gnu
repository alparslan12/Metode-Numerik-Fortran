# membuat plotting menggunakan gnuplot

# membuat rentang sumbu
set xrange [0:25]
set yrange [0:11]

# memberi label pada sumbu koordinat
set xlabel "Jarak (meter)"
set ylabel "ketinggian (meter)"

#plotting kurva
plot "dkeluar.dat" u 2:1 t "Gerak Peluru" with lines

# memberi judul
set title "Kurva Gerak Peluru"

#menghentikan proses agar gambar masih bisa dilihat
pause -1 "Tekan tombol enter untuk menutup\n"
