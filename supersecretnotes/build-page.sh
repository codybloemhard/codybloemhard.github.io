#!/bin/bash
file="../supersecretnotes.html"
rm "$file"
echo "<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>heastheitr</title>
<meta name=description content="">
<link rel="stylesheet" type="text/css" href="supersecretnotes/github-markdown.css">
<link rel="stylesheet" type="text/css" href="supersecretnotes/page-markdown.css">
</head>
<body>" >> "$file"

array=(markdown/*)
for ((i = ${#array[@]} - 1;i >= 0;i--)); do
    echo "<article class=\"markdown-body\">" >> "$file"
    echo "${arrray[i]}";
    cmark "${array[i]}" -t html >> "$file"
    echo "</article>" >> "$file"
done

echo "</body>
</html>" >> "$file"
