# Quick Reference Guide

## Citation Styles

### In-text Citations

```latex
% Narrative citation (author as part of sentence)
\cite{smith2020}
% Output: Smith et al. (2020)

% Parenthetical citation
\citep{smith2020}
% Output: (Smith et al., 2020)

% Multiple citations
\citep{smith2020,brown2019}
% Output: (Smith et al., 2020; Brown, 2019)

% Citation with page number
\citep[p.~42]{smith2020}
% Output: (Smith et al., 2020, p. 42)

% Citation with additional text
\citep[see][]{smith2020}
% Output: (see Smith et al., 2020)
```

## Common LaTeX Commands

### Text Formatting
```latex
\textbf{bold text}
\textit{italic text}
\underline{underlined text}  % Avoid in scientific writing
```

### Lists
```latex
% Numbered list
\begin{enumerate}
    \item First item
    \item Second item
\end{enumerate}

% Bullet points
\begin{itemize}
    \item First item
    \item Second item
\end{itemize}
```

### Sections
```latex
\section{Section Title}          % Not used in this intro (using section*)
\subsection*{Subsection Title}    % * removes numbering
```

### Special Characters
```latex
\%  % Percent sign
\&  % Ampersand
\$  % Dollar sign
\_  % Underscore
\#  % Hash
```

### Scientific Notation
```latex
$5 \times 10^{-6}$  % 5 × 10⁻⁶
\textit{E. coli}    % Italicized organism name
37\textdegree C     % 37°C (requires textcomp package)
```

### Figures
```latex
\begin{figure}[h]  % h=here, t=top, b=bottom, p=separate page
    \centering
    \includegraphics[width=0.8\textwidth]{figures/image.png}
    \caption{\textbf{Caption title.} Description.}
    \label{fig:label}
\end{figure}

% Reference: Figure \ref{fig:label}
```

### Tables
```latex
\begin{table}[h]
    \centering
    \caption{\textbf{Table title.} Description.}
    \label{tab:label}
    \begin{tabular}{lcc}  % l=left, c=center, r=right aligned
        \hline
        Header 1 & Header 2 & Header 3 \\
        \hline
        Data 1 & Data 2 & Data 3 \\
        Data 4 & Data 5 & Data 6 \\
        \hline
    \end{tabular}
\end{table}
```

## BibTeX Entry Types

### Journal Article
```bibtex
@article{key,
    author = {Last1, First1 and Last2, First2},
    title = {Article Title},
    journal = {Journal Name},
    year = {2020},
    volume = {10},
    number = {3},
    pages = {123--145},
    doi = {10.1234/journal.2020.001}
}
```

### Book
```bibtex
@book{key,
    author = {Last, First},
    title = {Book Title},
    publisher = {Publisher Name},
    year = {2020},
    edition = {2nd},
    address = {City}
}
```

### Book Chapter
```bibtex
@incollection{key,
    author = {Last, First},
    title = {Chapter Title},
    booktitle = {Book Title},
    editor = {Editor Last, Editor First},
    publisher = {Publisher},
    year = {2020},
    pages = {45--67}
}
```

### Website/Online Resource
```bibtex
@misc{key,
    author = {{Organization Name}},
    title = {Page Title},
    year = {2020},
    url = {https://www.example.com},
    note = {Accessed: 2024-01-15}
}
```

## Useful VS Code Shortcuts

- `Ctrl+S` (Cmd+S): Save and auto-compile
- `Ctrl+Alt+B` (Cmd+Alt+B): Build LaTeX project
- `Ctrl+Alt+V` (Cmd+Alt+V): View PDF
- `Ctrl+/` (Cmd+/): Comment/uncomment line

## Common Errors and Solutions

### Error: "Undefined control sequence"
- Check for typos in commands
- Ensure all packages are loaded in preamble

### Error: "Missing $ inserted"
- Mathematical notation needs to be in math mode: $x^2$

### Error: "File not found"
- Check file paths (case-sensitive on Linux/Mac)
- Ensure figures directory exists

### Bibliography not appearing
- Ensure you have \cite{} commands in text
- Compile sequence: pdflatex → bibtex → pdflatex → pdflatex
- Or just use: latexmk -pdf introduction.tex

## Finding BibTeX Entries

1. **Google Scholar**
   - Search for paper
   - Click "Cite" below the result
   - Click "BibTeX" at bottom

2. **PubMed**
   - Find article
   - Click "Cite"
   - Select "BibTeX" format

3. **Journal Websites**
   - Most journals have "Download Citation" or "Export" options
   - Choose BibTeX format

## Word Count

To count words (excluding LaTeX commands):
```bash
texcount introduction.tex
```

Or for detailed breakdown:
```bash
texcount -inc introduction.tex
```
