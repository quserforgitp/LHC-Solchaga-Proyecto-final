#!/usr/bin/env bash

touch 1 2 3

tar -cvf "filetared.tar" 1 2 3

echo "showing files in filetared.tar"

tar -tf filetared.tar
echo "finishing script"

rm `seq 1 3` ## DELETE the files 1 2 3
