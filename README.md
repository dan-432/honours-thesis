# BIOC 490 Project Introduction - Docker LaTeX Setup

This repository contains a Docker-based LaTeX environment for your BIOC 490 project introduction, following the setup from [this Medium tutorial](https://medium.com/@alex.wu157004861/vscode-docker-latex-setting-up-a-lightweight-latex-environment-for-mac-1426182eeca0).

## 📁 Files Included

- `introduction.tex` - Main LaTeX document with proper formatting for BIOC 490
- `references.bib` - BibTeX bibliography file
- `Dockerfile` - Custom Docker image definition (optional - can use pre-built image)
- `.vscode/settings.json` - VS Code LaTeX Workshop configuration for Docker
- `figures/` - Directory for your figure files

## 🚀 Quick Start

### Prerequisites

1. **Install Docker Desktop**
   - Mac: Download from [docker.com](https://www.docker.com/products/docker-desktop)
   - Windows: Download Docker Desktop for Windows
   - Linux: Install Docker Engine from your package manager

2. **Install VS Code**
   - Download from [code.visualstudio.com](https://code.visualstudio.com/)

3. **Install LaTeX Workshop Extension**
   - Open VS Code
   - Press `Ctrl+Shift+X` (or `Cmd+Shift+X` on Mac)
   - Search for "LaTeX Workshop"
   - Install the extension by James Yu
   - **Restart VS Code** after installation

### Setup Steps

#### Step 1: Configure Platform (Important!)

Open `.vscode/settings.json` and uncomment the appropriate line for your system:

**For Apple Silicon (M1/M2/M3 Macs):**
```json
"latex-workshop.docker.platform": "linux/arm64",
```

**For Intel Macs or Windows/Linux:**
```json
"latex-workshop.docker.platform": "linux/amd64",
```

#### Step 2: First Compilation

1. Open `dissertation.tex` in VS Code
2. Click the compile button (▶️ triangle icon) in the upper right corner
3. Docker will automatically pull the LaTeX image (this takes a few minutes the first time)
4. The PDF will appear in a new VS Code tab

That's it! Your environment is ready.

## 🔧 Docker Configuration Explained

### Using Pre-built Image (Recommended)

The `.vscode/settings.json` is configured to use the pre-built image:
```json
"latex-workshop.docker.image.latex": "noahwu/minimal-latex:latest"
```

This image includes:
- Basic TeXLive distribution
- Common LaTeX packages
- BibTeX support
- latexmk for automated building

### Building Your Own Image (Advanced)

If you want to customize the Docker image:

```bash
# Build the image
docker build -t my-latex-image .

# Update settings.json to use your image
# Change: "latex-workshop.docker.image.latex": "my-latex-image:latest"
```

## 🛠️ Compilation Methods

### Method 1: Auto-compile on Save (Default)
- Just save the file (`Ctrl+S` / `Cmd+S`)
- LaTeX Workshop automatically compiles

### Method 2: Manual Compilation
- Click the ▶️ icon in the upper right corner
- Or use keyboard shortcut: `Ctrl+Alt+B` (`Cmd+Alt+B` on Mac)

### Available Build Recipes

1. **latexmk** (Recommended) - Automatically handles multiple passes and bibliography
2. **pdflatex** - Traditional compilation with explicit bibliography steps

## 🧹 Cleaning Auxiliary Files

VS Code is configured to auto-clean after each build. Manual cleaning:

1. Click "View" → "Command Palette"
2. Type "LaTeX Workshop: Clean up auxiliary files"
3. Press Enter

Or use keyboard shortcut: `Ctrl+Alt+C` (`Cmd+Alt+C` on Mac)

## 🎯 Benefits of Docker Setup

1. **No LaTeX installation needed** - Everything runs in Docker
2. **Consistent environment** - Same setup on any machine
3. **Isolated** - Won't interfere with your system
4. **Reproducible** - Share the exact same environment
5. **Clean** - No auxiliary files cluttering your system

## 📊 Viewing the PDF

The PDF viewer is configured to open in a VS Code tab by default. You can also:

1. **Open in external viewer**: Right-click PDF → "Open in external viewer"
2. **Configure viewer**: Change `"latex-workshop.view.pdf.viewer"` in settings.json

## 🐛 Troubleshooting

### Docker image won't pull
```bash
# Manually pull the image
docker pull noahwu/minimal-latex:latest
```

### Compilation fails
- Check the LaTeX Workshop output panel
- Look for error messages in red
- Common issues: missing `{`, special characters not escaped

### PDF not updating
- Try manual compilation
- Clean auxiliary files and recompile
- Restart VS Code

### Bibliography not appearing
- Make sure you have `\cite{}` commands in your text
- Compile twice (latexmk does this automatically)
- Check `references.bib` for syntax errors

### Platform/architecture errors
- Make sure you've uncommented the correct platform line in settings.json
- ARM64 for Apple Silicon, AMD64 for Intel

## 📚 Additional Resources

- [LaTeX Workshop Documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki)
- [Docker Documentation](https://docs.docker.com/)
- [Overleaf Learn LaTeX](https://www.overleaf.com/learn)
- [BibTeX Guide](http://www.bibtex.org/)
