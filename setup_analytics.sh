#!/bin/bash

# Analytics Setup Script for HMS Immunology GitHub Pages
# Author: Eren Ada, PhD
# Date: 06/02/2025

echo "HMS Immunology GitHub Pages - Analytics Setup"
echo "=============================================="
echo

# Check if tracking ID is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <GOOGLE_ANALYTICS_TRACKING_ID>"
    echo "Example: $0 G-ABC123DEF456"
    echo
    echo "To get your tracking ID:"
    echo "1. Go to https://analytics.google.com"
    echo "2. Create a new property"
    echo "3. Copy the tracking ID (format: G-XXXXXXXXXX)"
    exit 1
fi

TRACKING_ID="$1"
echo "Setting up Google Analytics with tracking ID: $TRACKING_ID"
echo

# Update main site
echo "Updating main site (index.html)..."
if [ -f "index.html" ]; then
    # Replace placeholder tracking ID with actual one
    sed -i.bak "s/G-XXXXXXXXXX/$TRACKING_ID/g" index.html
    echo "✓ Updated index.html"
else
    echo "✗ index.html not found"
fi

# Update config file
echo "Updating _config.yml..."
if [ -f "_config.yml" ]; then
    sed -i.bak "s/G-XXXXXXXXXX/$TRACKING_ID/g" _config.yml
    echo "✓ Updated _config.yml"
else
    echo "✗ _config.yml not found"
fi

echo
echo "Setup complete! Next steps:"
echo "1. Commit and push changes to GitHub:"
echo "   git add ."
echo "   git commit -m 'Add Google Analytics tracking'"
echo "   git push origin main"
echo
echo "2. For the project tracker site, repeat similar steps in that repository"
echo "3. Verify tracking is working in Google Analytics after 24-48 hours"
echo
echo "Analytics will be available at: https://analytics.google.com" 