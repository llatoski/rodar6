set term cairolatex pdf standalone blacktext header '\usepackage{amsmath}'
 
set output 'time.tex'
set xlabel '\LARGE $\Delta\eta$'  
set ylabel '\LARGE $\langle \tau \rangle (\Delta\eta) , \tau_M (\Delta\eta)$' offset 0,0
set format x '\Large $10^{%L}$'
set log x
set key left box opaque samplen -1 width 3
set pointsize .7
binwidth=.05
bin(x,width)=width*floor(x/width)

plot 'medias.dsf' u 1:($2) t 'Media' w lp lc 1 pt 5 lw 3,\
     'mediasfirstgroup.dsf' u 1:($2) t 'Máximo' w lp lc 2 pt 7 lw 3,
     
