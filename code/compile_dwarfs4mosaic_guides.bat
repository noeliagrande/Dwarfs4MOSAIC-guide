@echo off

REM Compile the USER version of the Quick Start Guide
latexmk -pdf dwarfs4mosaic_Users_Quick_Start_Guide.tex

REM Compile the ADMINISTRATOR version of the Quick Start Guide
latexmk -pdf dwarfs4mosaic_Admin_Quick_Start_Guide.tex

REM Compile the COMPLETE version of the Quick Start Guide (for both, User and Administrator)
latexmk -pdf dwarfs4mosaic_Quick_Start_Guide.tex

REM Remove auxiliary files
latexmk -c

REM Move PDFs to parent folder
move *.pdf ..

echo Done!
pause