#!/bin/bash
echo
read -p "Download Link: " link
read -p "Output: " output
echo
echo "Downloading $output..."
( echo "wget -q 'Dummy' -O 'Dummy2'" | sed "s/Dummy/$link" | sed "s/Dummy2/$output" | bash; ) && ( echo "Done"; ) || ( echo "Failed"; exit 1; )
