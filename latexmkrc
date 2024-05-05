@default_files = ('main.tex');

$pdf_mode = 5;

$xelatex = "xelatex -file-line-error -halt-on-error -interaction=nonstopmode -synctex=1 %O %S";
$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";

$go_mode = 1;

$clean_ext = "los synctex.gz xdv";
