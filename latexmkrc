@default_files = ('main.tex');

$pdf_mode = 5;

# if you want to use other pdf perviewer, change below line
$pdf_previewer = 'start /usr/bin/okular %S';

$xelatex = "xelatex -file-line-error -halt-on-error -interaction=nonstopmode -synctex=1 %O %S";
$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";

$go_mode = 1;

$clean_ext = "los synctex.gz xdv";
