thesis_src := "thesis/main.typ"
thesis_out := "thesis/build/main.pdf"

default:
    @just --list

build-thesis:
  mkdir -p thesis/output_files
  cd thesis && latexmk -pdf -outdir=output_files main.tex

build-section section:
  mkdir -p thesis/output_files
  cd thesis && latexmk -pdf -outdir=output_files sections/{{section}}.tex

watch-thesis:
  mkdir -p thesis/output_files
  cd thesis && latexmk -pdf -pvc -outdir=output_files main.tex

new-hw course set:
    mkdir -p coursework/{{course}}/{{set}}
    cp coursework/template/homework-template.typ coursework/{{course}}/{{set}}/{{set}}.typ

new-course course:
    mkdir -p coursework/{{course}}
    mkdir -p vault/coursework-notes/{{course}}
    touch coursework/{{course}}/.gitkeep

ocr file:
    ocrmypdf {{file}} {{file}}

compress-pdf file:
    qpdf --linearize {{file}} {{file}}.tmp
    mv {{file}}.tmp {{file}}

strip-metadata file:
    exiftool -all= -overwrite_original {{file}}

fmt:
    treefmt

lint:
    typos
