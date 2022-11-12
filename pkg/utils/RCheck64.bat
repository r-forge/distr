@echo off
set _R_CHECK_LENGTH_1_CONDITION_=true
if not "%2"=="" (
call R CMD check --no-multiarch --output=%2 --timings --run-donttest --install-args="--byte-compile --with-keep.source --compact-docs --resave-data --install-tests --example --html --latex --clean --preclean" %1
) else (
call R CMD check --no-multiarch --timings  --run-donttest --install-args="--byte-compile --with-keep.source --compact-docs --resave-data --install-tests --example --html --latex --clean --preclean" %1
)
set _R_CHECK_LENGTH_1_CONDITION_=
echo on
