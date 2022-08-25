#! /usr/bin/bash

# Carlos Peralta
# UBMI-IFC 2022
# cperalta@ifc.unam.mx
# MIT License

# Takes all arguments and make a google search on chrome

GSEARCH='qutebrowser https://www.google.com/search?q='

if [ $# -lt 1 ];
then
    echo "ERROR: at least 1 term of search is required"
    exit
else
    QUERY=$( echo $@ | sed 's/ /+/g' )
    $GSEARCH$QUERY & 2> /dev/null
fi
