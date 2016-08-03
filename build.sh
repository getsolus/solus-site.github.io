#!/bin/bash

hugo
for file in $(ls public/**/*.html); do
    html-minifier $file \
        --collapse-boolean-attributes \
        --collapse-inline-tag-whitespace \
        --collapse-whitespace \
        --html5 \
        --keep-closing-slash \
        --output $file \
        --remove-comments \
        --remove-redundant-attributes \
        --remote-tag-whitespace
done
