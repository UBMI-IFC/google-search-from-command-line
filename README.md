# Search in Google from CLI 

This script start a web search from the command line interface.

___

## Usage

```bash
$ ./clisearch.sh [-CQFnksydph] [Words to be searched]
```

If no arguments are provided other than search terms it will search at google.com using the default browser (depends on x-www-browser variable on the OS)

## Arguments

### Browser 

| option  | browser  |
|---|---|
| `-C`  | Google Chrome  |
| `-Q`  | qutebrowser  |
| `-F`  | Mozilla Firefox  |


### Web sites

| option  | site  |
|---|---|
| `-d`  | DuckDuckGo  |
| `-n`  | NCBI  |
| `-s`  | Semantic Scholar  |
| `-k`  | KEGG  |
| `-y`  | YouTube  |
| `-p`  | Pubmed  |
