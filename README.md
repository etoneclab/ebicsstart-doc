# EbicsStart – website

Static pages for EbicsStart (privacy policy, support, impressum), served by GitHub Pages.

- Edit the Markdown in `src/`, then run `./build.sh` (needs pandoc). The generated `*.html` files are committed, GitHub Pages serves them as they are.
- `.nojekyll` switches Jekyll off.
- Replace every bracketed placeholder before publishing: `grep -rnE '\[[^]]*\]([^(]|$)' src`.

Pages: `index.html`, `privacy.html` (EN), `datenschutz.html` (DE), `support.html`, `impressum.html`.
