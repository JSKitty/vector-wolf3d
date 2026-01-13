#!/bin/bash

# Build script for Wolfenstein 3D WebXDC package

cd "$(dirname "$0")"

rm -f wolf3d.xdc

BUILD_DIR=$(mktemp -d)
trap "rm -rf $BUILD_DIR" EXIT

cp index.html "$BUILD_DIR/"
cp wolf3d.js "$BUILD_DIR/"
cp wolf3d.wasm "$BUILD_DIR/"
cp wolf3d.data "$BUILD_DIR/"
cp manifest.toml "$BUILD_DIR/"
cp icon.png "$BUILD_DIR/"

# Minify HTML
if [ -f "$BUILD_DIR/index.html" ]; then
  perl -0777 -pe '
    s/<!--(?!\[).*?-->//gs;
    s/^\s+//gm;
    s/\s+$//gm;
    s/\n\s*\n/\n/g;
  ' "$BUILD_DIR/index.html" > "$BUILD_DIR/index.html.min" && mv "$BUILD_DIR/index.html.min" "$BUILD_DIR/index.html"
fi

cd "$BUILD_DIR"
zip -9 -r "$OLDPWD/wolf3d.xdc" . -x "*.DS_Store"

cd "$OLDPWD"
echo ""
echo "Built wolf3d.xdc"
ls -lh wolf3d.xdc
