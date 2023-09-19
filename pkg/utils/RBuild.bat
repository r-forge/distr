@echo off
call R CMD build --compact-vignettes="gs+qpdf" --compression="best" --resave-data --md5 %1
echo on
