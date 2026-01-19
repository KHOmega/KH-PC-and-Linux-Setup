#!/usr/bin/env bash
set -e

WORKDIR="$HOME/KH3EGS"

cleanup() {
    if [[ -d "$WORKDIR" ]]; then
        echo "Cleaning up files..."
        rm -rf "$WORKDIR"
        echo "Finished! KINGDOM HEARTS III should now load up!"
    fi
}
trap cleanup EXIT

PREFIX_NAME="KINGDOM HEARTS III  Re Mind"
SEARCH_BASE="/home/$USER/Games"
PREFIX=""

echo "Looking for KINGDOM HEARTS III!"
echo "  $PREFIX_NAME"
echo "Under:"
echo "  $SEARCH_BASE"

if [[ ! -d "$SEARCH_BASE" ]]; then
    echo "Can't find KINGDOM HEARTS III!"
    echo "  $SEARCH_BASE"
    exit 1
fi

FOUND=$(find "$SEARCH_BASE" -type d -name "$PREFIX_NAME" 2>/dev/null | head -n 1)

if [[ -n "$FOUND" && -f "$FOUND/system.reg" ]]; then
    PREFIX="$FOUND"
else
    echo "Error: Wine prefix '$PREFIX_NAME' not found or invalid."
    exit 1
fi

echo "Detected KINGDOM HEARTS III!"
echo "  $PREFIX"

mkdir -p "$WORKDIR"
cd "$WORKDIR"

gh repo clone Kurumi78/mf-install
cd mf-install

WINEPREFIX="$PREFIX" ./mf-install.sh
