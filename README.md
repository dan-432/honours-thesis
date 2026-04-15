# BIOC 490 Project Introduction - LaTeX Setup

This repository contains the LaTeX setup for your BIOC 490 project introduction.

## Files Included

- `introduction.tex` - Main LaTeX document with proper formatting
- `references.bib` - BibTeX bibliography file
- `environment.yml` - Conda environment specification
- `.latexmkrc` - LaTeX compilation configuration
- `.vscode/settings.json` - VS Code LaTeX Workshop settings

## Setup Instructions

### 1. Create the Conda Environment

```bash
# Create the environment from the yml file
conda env create -f environment.yml

# Activate the environment
conda activate latex-thesis
```

### 2. Install VS Code Extension

Install the "LaTeX Workshop" extension in VS Code:
- Press `Ctrl+Shift+X` (or `Cmd+Shift+X` on Mac)
- Search for "LaTeX Workshop"
- Install the extension by James Yu

### 3. Create a figures directory (if needed)

```bash
mkdir figures
```

Place any figures you want to include in this directory.

## Writing Your Introduction

### Document Structure

1. **Title Page**: Already formatted with placeholders for:
   - Project title
   - Your name
   - Course (BIOC 490)
   - Supervisor name

2. **Introduction Section**: Follow this structure:
   - Opening paragraph(s) with 1-2 sentence outline of what you'll do
   - Literature review sections
   - Project aims (about half a page)

### Formatting Requirements (Already Configured)

- Font: Times New Roman, 12pt
- Line spacing: 1.5
- Margins: 3cm (top, bottom, right), 3.5cm (left)
- Target length: ~2000 words (excluding references, figures, tables)

### Adding References

1. Add references to `references.bib` in BibTeX format
   - Find BibTeX entries on Google Scholar, PubMed, or journal websites
   - Click "Cite" → "BibTeX" to get the formatted entry

2. Cite in your document:
   - `\cite{key}` for: Smith et al. (2020)
   - `\citep{key}` for: (Smith et al., 2020)
   - Multiple citations: `\citep{key1,key2}`

### Adding Figures

```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{figures/your-figure.png}
    \caption{\textbf{Figure title.} Detailed description of the figure. 
    If adapted from a source, include: Adapted from \cite{source}.}
    \label{fig:yourlabel}
\end{figure}
```

Reference in text: `Figure \ref{fig:yourlabel} shows...`

### Text Formatting

- **Bold**: `\textbf{text}`
- *Italic*: `\textit{text}`
- No underlining (use bold or italic instead)

## Compiling Your Document

### Option 1: Automatic (Recommended)
- Simply save the file in VS Code
- The LaTeX Workshop extension will automatically compile
- View the PDF in the VS Code tab

### Option 2: Manual Compilation

```bash
# Using latexmk (recommended - handles bibliography automatically)
latexmk -pdf introduction.tex

# Or manually (if you prefer)
pdflatex introduction.tex
bibtex introduction
pdflatex introduction.tex
pdflatex introduction.tex
```

### Cleaning Auxiliary Files

```bash
latexmk -c  # Clean auxiliary files
latexmk -C  # Clean all generated files including PDF
```

## Writing Tips

1. **Use passive voice and third person**
   - Good: "The experiment was conducted..."
   - Avoid: "We conducted the experiment..."

2. **Provide evidence**
   - Every claim needs a citation or experimental result
   - Use `\cite{}` or `\citep{}` appropriately

3. **Proof-read carefully**
   - Check spelling and grammar
   - Ensure consistent style throughout
   - Have someone else read it

4. **Keep it focused**
   - Don't try to review all literature
   - Focus on what's directly relevant to your project

5. **State aims clearly**
   - Aims describe WHAT you want to achieve
   - Not HOW you'll do it (that's methods)

## Troubleshooting

### Bibliography not appearing?
Make sure you:
1. Have at least one `\cite{}` or `\citep{}` in your document
2. Compiled multiple times (or used latexmk)
3. Have no syntax errors in references.bib

### Figures not showing?
Check that:
1. The file path is correct
2. The figure file exists in the specified location
3. The file format is supported (PNG, JPG, PDF work best)

### Compilation errors?
- Check the log file for specific error messages
- Ensure all `{` have matching `}`
- Check for special characters that need escaping: `& % $ # _ { } ~ ^`

## Need Help?

- LaTeX documentation: https://www.latex-project.org/help/documentation/
- BibTeX guide: http://www.bibtex.org/
- Overleaf tutorials: https://www.overleaf.com/learn

Good luck with your project introduction!
