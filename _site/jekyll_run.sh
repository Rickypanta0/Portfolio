
#!/bin/bash

#verify install wkhtmltopdf
if ! command -v wkhtmltopdf &> /dev/null
then
    echo "wkhtmltopdf not installed."
    exit 1
fi
#pre build jekyll
jekyll build --config _config.yml,_config_pdf.yml
INPUT_FILE="_site/default_pdf.html"
OUTPUT_FILE="resume.pdf"
# generation PDF
wkhtmltopdf --enable-local-file-access "$INPUT_FILE" "$OUTPUT_FILE"
#lauch jekyll
jekyll serve
