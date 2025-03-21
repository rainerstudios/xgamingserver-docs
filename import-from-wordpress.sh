#!/bin/bash
# Script to import content from WordPress

# Replace these variables with your WordPress details
WORDPRESS_EXPORT_FILE="wordpress_export.xml"
OUTPUT_DIR="wordpress_content"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Check if xmlstarlet is installed
if ! command -v xmlstarlet &> /dev/null; then
    echo "xmlstarlet is required but not installed. Please install it using:"
    echo "  sudo apt-get install xmlstarlet"
    exit 1
fi

# Check if export file exists
if [ ! -f "$WORDPRESS_EXPORT_FILE" ]; then
    echo "WordPress export file not found: $WORDPRESS_EXPORT_FILE"
    exit 1
fi

echo "Extracting content from WordPress export..."

# Extract posts and convert to MDX
xmlstarlet sel -t -m "//item[wp:post_type='post' and wp:status='publish']" \
    -v "concat(wp:post_name, '.mdx')" -o ":" \
    -v "concat(title, '|', wp:post_date, '|', content:encoded)" \
    -n "$WORDPRESS_EXPORT_FILE" | while IFS=: read -r filename content; do
    
    # Extract title, date, and content
    title=$(echo "$content" | cut -d '|' -f 1)
    date=$(echo "$content" | cut -d '|' -f 2)
    post_content=$(echo "$content" | cut -d '|' -f 3-)
    
    # Create MDX file
    cat > "$OUTPUT_DIR/$filename" << EOF
---
title: "$title"
date: "$date"
---

$post_content
EOF
    
    echo "Created $OUTPUT_DIR/$filename"
done

echo "WordPress content imported and converted to MDX format."
echo "Review the files in $OUTPUT_DIR and move them to the appropriate game directories."
