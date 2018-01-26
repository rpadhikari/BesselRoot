set term postscript enhanced color 'Helvetica-Bold' 20
set output 'bessel.ps'
set xr [0:15]
set style line 1 lt 1 lw 3 lc rgb 'black'
set style line 2 lt 1 lw 3 lc rgb 'blue'
set style line 3 lt 1 lw 3 lc rgb 'red'
set style line 4 lt 1 lw 3 lc rgb 'forest-green'
set style arrow 1 lt 2 lw 1 lc rgb 'black' nohead
set arrow from 0.0,0.0 to 15.0,0.0 as 1
set xl 'x'
set yl 'J_n(x)'
plot 'data.out' u 1:2 w l ti 'J_0(x)' ls 1,\
 'data.out' u 1:3 w l ti 'J_1(x)' ls 2,\
 'data.out' u 1:4 w l ti 'J_2(x)' ls 3,\
 'data.out' u 1:5 w l ti 'J_3(x)' ls 4
set output
! ps2pdf bessel.ps


