#!/usr/bin/env bash
# Copy the interactive visualizations into the built site verbatim.
#
# interactive-visualization/ is excluded from the Jekyll source (see _config.yml)
# because it is hand-written x3dom markup alongside ~218 MB of .glb models:
# terser/minifier would rewrite the 3D scene markup, and Jekyll would re-copy the
# whole tree on every build. Run this AFTER purgecss so it cannot strip the CSS
# those pages rely on.
set -euo pipefail
SITE="${1:-_site}"
mkdir -p "$SITE/interactive-visualization"
cp -r interactive-visualization/. "$SITE/interactive-visualization/"
echo "copied interactive-visualization -> $SITE/"
