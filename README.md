# Portfolio

## [**Demo Website**]()  
Based on the remote theme [researcher](https://github.com/ankitsultana/researcher), with automatic rendering of the CV using the `index.md` file, merged with the `contacts` section defined in the `_config.yml` file.

---

## Requirements

1. Install Jekyll by following [these instructions](https://jekyllrb.com/docs/installation/).  
2. Install `wkhtmltopdf` using:  
   ```bash
   brew install wkhtmltopdf

## Installation
1. Fork and clone the repository
2. In the file `_layouts/default.html` modify the absolute path to CSS in line 28 inside the if statement
3. Run the project using:
    ```bash
    `./jekyll_run.sh`

## Customization
- To modify the `contacts` inside the pdf you must modify the link inside the file `_config.yml`
