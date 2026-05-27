# Dwarfs4MOSAIC Guides

This directory contains the LaTeX sources used to generate the 
three versions of the Dwarfs4MOSAIC Quick Start Guide:

- `dwarfs4mosaic_Users_Quick_Start_Guide.tex`
  User version.

- `dwarfs4mosaic_Admin_Quick_Start_Guide.tex`
  Administrator version.

- `dwarfs4mosaic_Quick_Start_Guide.tex`
  Complete version including both user and administrator content.


## Structure

The guide source files are organized modularly.  
Each main `.tex` file includes the corresponding sections using `\input`.

This approach avoids code duplication: changes only need to be made in a single location 
and are automatically propagated to all guide versions where the section is included.

## Generating the PDFs

There are two ways to generate the PDF guides.


### 1. Compile each `.tex` file manually

Open the desired `.tex` file in your LaTeX editor and compile it normally.

After compilation:
- remove auxiliary files (`.aux`, `.log`, `.toc`, etc.)
- move the generated PDF files to the parent directory

This keeps the source directory clean and containing only:
- `.tex` source files
- image resources
- utility scripts

### 2. Use the automatic compilation script

Run:

```bat
compile_dwarfs4mosaic_guides.bat