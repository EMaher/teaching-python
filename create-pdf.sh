#!/bin/bash

echo "Creating PDF files from AsciiDoc files..."

# Check if asciidoctor-pdf is installed
if ! command -v asciidoctor-pdf &> /dev/null
then
    echo "asciidoctor-pdf could not be found. Please install it to proceed."
    exit
fi

for file in $(find -type f -name *.adoc); do
    echo "Processing $file..."
    if [ -f "$file" ]; then
        asciidoctor-pdf -a allow-uri-read -a icons=font -a icon-set=fa   "$file" -o "bin/${file%.[^.]*}-digital.pdf"
        asciidoctor-pdf -a allow-uri-read -a show-link-uri -a icons=font -a icon-set=fa   "$file" -o "bin/${file%.[^.]*}-print.pdf"
    fi
done

#-a pdf-themesdir=/workspaces/teaching-python/.asciidocs/themes -a pdf-theme=teaching
