#!/bin/bash

cd cursors
for i in *; do 
    echo making $i ....
    xcursorgen -p ../Sources ../Sources/$i.conf $i; 
done
