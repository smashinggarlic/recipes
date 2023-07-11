#!/bin/bash

# Get a list of all Markdown files in the repository (excluding the README file)
files=$(find . -type f -name "*.md" ! -name "README.md")

# Generate the Markdown content for the README file
readme_content="# Recipes\n\nThis repository contains various recipes:\n"
for file in $files; do
    filename=$(basename "$file")
    readme_content+="\n- [${filename}](${file})"
done

# Write the updated README content to the README file
echo -e "$readme_content" > README.md
