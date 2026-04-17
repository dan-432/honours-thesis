#!/bin/bash

# BIOC 490 Docker LaTeX Setup Script

echo "========================================="
echo "BIOC 490 Docker LaTeX Setup"
echo "========================================="
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed!"
    echo "Please install Docker Desktop from: https://www.docker.com/products/docker-desktop"
    exit 1
fi

echo "✅ Docker is installed"

# Check if Docker is running
if ! docker info &> /dev/null; then
    echo "❌ Docker is not running!"
    echo "Please start Docker Desktop and try again"
    exit 1
fi

echo "✅ Docker is running"

# Create figures directory if it doesn't exist
if [ ! -d "figures" ]; then
    mkdir figures
    echo "✅ Created figures directory"
fi

# Pull the Docker image
echo ""
echo "Building Docker image..."
docker build -t my-tex-image .

if [ $? -eq 0 ]; then
    echo "✅ Docker image built successfully"
else
    echo "❌ Failed to build Docker image"
    exit 1
fi


echo ""
echo "========================================="
echo "Setup Complete! 🎉"
echo "========================================="
echo ""
echo "Next steps:"
echo "1. Open this folder in VS Code"
echo "2. Make sure LaTeX Workshop extension is installed"
echo "3. Update .vscode/settings.json with your platform"
echo "4. Open introduction.tex and click the compile button (▶️)"
echo ""
echo "Happy writing! 📝"
