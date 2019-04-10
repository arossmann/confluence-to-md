
# Confluence to Markdown Dockerfile

migrating confluence export files to Markdown Syntax

[Original Script](https://github.com/arossmann/confluence-to-markdown)


## Tested with:
- Mac OS 10.14.4 host os
- Docker 18.09.02

## Use:

```
docker build -f Dockerfile -t converter_image . 
docker run -v /path/to/confluence/export/folder:/mnt/markdown -it converter_image bash -c "npm run start /mnt/markdown /mnt/markdown" 
```
, where `/path/to/confluence/export/folder` is the path to the folder containing the actual html files. 

## Reference for Pandoc functionalities

https://pandoc.org/MANUAL.html