#!/bin/bash
echo
read -p "Download Link: " link
read -p "Output: " output
echo
echo "Downloading $output..."
wget -q "$link" -O "$output" && echo "Done" || echo "Failed"; exit 1
