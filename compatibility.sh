#!/bin/bash
# try running this script with both `sh` and `bash`. it does the exact same
# thing!

echo "this works in both bash and sh:"

x='hello there'
echo "$x"

echo "but this only expands to 'x.svg x.png' in bash:"

echo x{.svg,.png}

