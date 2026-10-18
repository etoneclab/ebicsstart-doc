#!/bin/zsh
# Rebuilds the HTML pages in this folder from src/*.md. Needs pandoc.
set -euo pipefail
cd "$(dirname "$0")"
build() { # name, lang, title
  pandoc "src/$1.md" -f markdown+hard_line_breaks -t html5 --template=template.html \
    -V lang="$2" -M pagetitle="$3" -o "$1.html"
}
build index        en "EbicsStart"
build privacy      en "Privacy Policy – EbicsStart"
build datenschutz  de "Datenschutzerklärung – EbicsStart"
build support      en "Support – EbicsStart"
build impressum    de "Impressum – EbicsStart"
echo "Built pages."
