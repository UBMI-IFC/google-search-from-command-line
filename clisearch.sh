#! /usr/bin/bash

# UBMI-IFC 2022
# Carlos Peralta, César Poot
# cperalta@ifc.unam.mx, apoot@ifc.unam.mx
# MIT License

# Takes all arguments and make a google search on default web browser



col=`tput setaf 2`
res=`tput sgr0`

Help()
{
    echo
    echo "                                ${col}Command Line Interface Web Search Launcher${res}                "
    echo
    echo "USAGE:"
    echo
    echo "${col}./clisearch.sh [-CQFnksydph] [Words to be searched]${res}"
    echo
    echo "By default it will search at Google using the default web browser but this behavior can be changed"
    echo
    echo "OPTIONS:"
    echo "         Browser"
    echo "                  -C - - - - - Google Chrome"
    echo "                  -Q - - - - - qutebrowser"
    echo "                  -F - - - - - Mozilla Firefox"
    echo "         Web site"
    echo "                  -d - - - - - DuckDuckGo"
    echo "                  -n - - - - - NCBI"
    echo "                  -s - - - - - Semantic Scholar"
    echo "                  -k - - - - - KEGG"
    echo "                  -y - - - - - YouTube"
    echo "                  -p - - - - - Pubmed"
    echo
    echo "         Help"
    echo "                  -h - - - - - This screen"
    echo
}



WBROW='x-www-browser'
SITE='https://www.google.com/search?q='

while getopts CQFhnksyd flag
do
    case $flag in
        h) Help
           exit;;
        C) WBROW=google-chrome;;
        Q) WBROW=qutebrowser;;
        F) WBROW=firefox;;
        n) SITE='https://www.ncbi.nlm.nih.gov/search/all/?term=';;
        k) SITE='https://www.genome.jp/dbget-bin/www_bfind_sub?mode=bfind&max_hit=1000&dbkey=kegg&keywords=';;
        s) SITE='https://www.semanticscholar.org/search?q=';;
        y) SITE='https://www.youtube.com/results?search_query=';;
        d) SITE='https://duckduckgo.com/?q=';;
        p) SITE='https://pubmed.ncbi.nlm.nih.gov/?term=';;
        *) echo "ERROR: Invalid option, check -h to get help"
           exit;;
    esac
done

QUERY=$( echo $@ | sed -r 's/-[a-zA-Z]*//g' | sed 's/ /+/g' | sed -r 's/^\++//')
$WBROW $SITE$QUERY & 2> /dev/null
