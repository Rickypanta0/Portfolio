
#!/bin/bash

# Verifica che wkhtmltopdf sia installato
if ! command -v wkhtmltopdf &> /dev/null
then
    echo "wkhtmltopdf non è installato. Installalo prima di procedere."
    exit 1
fi
jekyll build --config _config.yml,_config_pdf.yml
# Percorsi
INPUT_FILE="_site/index.html"
OUTPUT_FILE="resume.pdf"

# Genera il PDF
wkhtmltopdf --enable-local-file-access "$INPUT_FILE" "$OUTPUT_FILE"
jekyll serve
