@echo off
call R CMD build --compact-vignettes="gs+qpdf" --resave-data --md5 %1
echo on
