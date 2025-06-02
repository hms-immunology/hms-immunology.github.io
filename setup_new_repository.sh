#!/bin/bash

# HMS Immunology Repository Setup Script
# Author: Eren Ada, PhD
# Department of Immunology, Harvard Medical School
# Date: 06/02/2025

set -e

echo "========================================="
echo "HMS Immunology Repository Setup Script"
echo "========================================="

# Function to display usage
usage() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -t, --type TYPE       Repository type (workshop, pipeline, protocol, dataset)"
    echo "  -n, --name NAME       Repository name"
    echo "  -d, --description DESC Brief description"
    echo "  -h, --help           Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 --type workshop --name flow-cytometry-workshop --description 'Flow cytometry analysis workshop'"
    echo "  $0 --type pipeline --name immunoseq-pipeline --description 'Immune repertoire sequencing analysis pipeline'"
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -t|--type)
            REPO_TYPE="$2"
            shift 2
            ;;
        -n|--name)
            REPO_NAME="$2"
            shift 2
            ;;
        -d|--description)
            REPO_DESC="$2"
            shift 2
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "Unknown option $1"
            usage
            exit 1
            ;;
    esac
done

# Validate required parameters
if [[ -z "$REPO_TYPE" || -z "$REPO_NAME" ]]; then
    echo "Error: Repository type and name are required"
    usage
    exit 1
fi

# Validate repository type
case $REPO_TYPE in
    workshop|pipeline|protocol|dataset)
        ;;
    *)
        echo "Error: Invalid repository type. Must be one of: workshop, pipeline, protocol, dataset"
        exit 1
        ;;
esac

# Set default description if not provided
if [[ -z "$REPO_DESC" ]]; then
    REPO_DESC="HMS Immunology $REPO_TYPE repository"
fi

echo "Repository Type: $REPO_TYPE"
echo "Repository Name: $REPO_NAME"
echo "Description: $REPO_DESC"
echo ""

# Create directory structure
echo "Creating repository structure..."
mkdir -p "$REPO_NAME"
cd "$REPO_NAME"

# Initialize git repository
git init

# Create basic directory structure based on type
case $REPO_TYPE in
    workshop)
        mkdir -p {data,scripts,exercises,solutions,slides,docs}
        echo "Workshop structure created with directories: data, scripts, exercises, solutions, slides, docs"
        ;;
    pipeline)
        mkdir -p {src,tests,data,docs,examples,config}
        echo "Pipeline structure created with directories: src, tests, data, docs, examples, config"
        ;;
    protocol)
        mkdir -p {protocols,images,templates,references}
        echo "Protocol structure created with directories: protocols, images, templates, references"
        ;;
    dataset)
        mkdir -p {raw_data,processed_data,metadata,scripts,documentation}
        echo "Dataset structure created with directories: raw_data, processed_data, metadata, scripts, documentation"
        ;;
esac

# Create basic README
echo "# $REPO_NAME" > README.md
echo "" >> README.md
echo "**Department of Immunology - Harvard Medical School**" >> README.md
echo "" >> README.md
echo "$REPO_DESC" >> README.md

# Create .gitignore
cat > .gitignore << EOF
# R
.Rproj.user
.Rhistory
.RData
.Ruserdata
*.Rproj

# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
.env

# Data files (add specific patterns as needed)
*.csv
*.xlsx
*.tsv
# !example_data.csv  # Uncomment to include specific files

# OS
.DS_Store
Thumbs.db

# IDE
.vscode/
.idea/

# Logs
*.log

# Temporary files
*.tmp
*.temp
*~

# Output directories
results/
output/
figures/
plots/
EOF

# Create LICENSE file
cat > LICENSE << EOF
MIT License

Copyright (c) 2025 Department of Immunology, Harvard Medical School

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

# Initial commit
git add .
git commit -m "Initial repository setup for $REPO_NAME

- Added $REPO_TYPE structure
- Basic README and LICENSE
- Created by HMS Immunology setup script"

echo ""
echo "✅ Repository '$REPO_NAME' created successfully!"
echo ""
echo "Next steps:"
echo "1. Add your content and customize README.md"
echo "2. Create remote repository on GitHub:"
echo "   gh repo create hms-immunology/$REPO_NAME --public --description '$REPO_DESC'"
echo "3. Push to remote:"
echo "   git remote add origin https://github.com/hms-immunology/$REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "Repository location: $(pwd)" 