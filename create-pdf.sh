#!/bin/bash
asciidoctor-pdf Trinket/PythonTutorial-SquaresAndFlowers-MS.adoc -o bin/Trinket/PythonTutorial-SquaresAndFlowers-MS.pdf
asciidoctor-pdf Trinket/PythonTutorial-WhatsNext.adoc -o bin/Trinket/PythonTutorial-WhatsNext.pdf

asciidoctor-pdf -a allow-uri-read MakeCode/PythonTutorial-SquaresAndFlowers-MS.adoc -o bin/MakeCode/PythonTutorial-SquaresAndFlowers-MS.pdf
