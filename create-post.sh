#!/bin/bash

# Blog post creator for Chirpy theme
# Usage: ./create-post.sh "Your Post Title"

POST_TITLE="$1"
POST_DIR="$HOME/Documents/git/rishabhjain4.github.io/_posts"

if [ -z "$POST_TITLE" ]; then
    echo "Usage: $0 \"Your Post Title\""
    exit 1
fi

# Get current date in YYYY-MM-DD HH:MM:SS format
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Create filename with date prefix
FILENAME=$(date +"%Y-%m-%d")-"${POST_TITLE//[^a-zA-Z0-9_-]/-}".md

# Create the post
cat > "$POST_DIR/$FILENAME" <<EOF
---
title: "$POST_TITLE"
date: $CURRENT_DATE
categories: []
tags: []
author: rishabh
---

# ${POST_TITLE}

Write your content here...
EOF

echo "Created: $POST_DIR/$FILENAME"