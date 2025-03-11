#!/bin/bash

for file in $(find -type f -name *.adoc); do
    echo $file
    if [ -f "$file" ]; then
        asciidoctor-pdf -a allow-uri-read -a icons=font -a icon-set=fa   "$file" -o "bin/${file%.[^.]*}.pdf"
    fi
done

#-a pdf-themesdir=/workspaces/teaching-python/.asciidocs/themes -a pdf-theme=teaching
