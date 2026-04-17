# Quick Start Guide - Docker LaTeX Setup

## 🎯 Goal
Get LaTeX running in VS Code using Docker (no local LaTeX installation needed!)

## ⚡ 5-Minute Setup

### Step 1: Install Prerequisites (10 minutes first time)

1. **Install Docker Desktop**
   - Mac: https://www.docker.com/products/docker-desktop
   - Windows: https://www.docker.com/products/docker-desktop
   - Open Docker Desktop and make sure it's running

2. **Install VS Code**
   - https://code.visualstudio.com/

3. **Install LaTeX Workshop Extension**
   - Open VS Code
   - Extensions panel (Ctrl+Shift+X or Cmd+Shift+X)
   - Search "LaTeX Workshop"
   - Install by James Yu
   - **Restart VS Code!**

### Step 2: Configure Your Platform

Open `.vscode/settings.json` in this folder.

**Find these lines** and uncomment ONE:

```json
// For Apple Silicon (M1/M2/M3) - UNCOMMENT THIS:
// "latex-workshop.docker.platform": "linux/arm64",

// For Intel Mac or Windows/Linux - UNCOMMENT THIS:
// "latex-workshop.docker.platform": "linux/amd64",
```

**How to uncomment:** Just remove the `//` at the start of the line

### Step 3: First Compilation

1. Open `introduction.tex` in VS Code
2. Click the ▶️ (compile) button in the top-right corner
3. Wait (first time takes 2-3 minutes - downloading Docker image)
4. PDF appears in VS Code!

## ✅ That's It!

From now on:
- Edit `introduction.tex`
- Save file (Ctrl+S / Cmd+S)
- PDF auto-updates

## 📝 Now Start Writing

1. **Edit title page** in `introduction.tex`:
   - Your project title
   - Your name
   - Supervisor name

2. **Write your introduction** (~2000 words)

3. **Add references** to `references.bib`

4. **Cite** using `\cite{key}` or `\citep{key}`

## 🆘 Problems?

### Docker image won't download
```bash
docker pull noahwu/minimal-latex:latest
```

### Compilation errors
- Check LaTeX Workshop Output panel
- Look for red error messages
- Most common: typos, missing `{`, or `}`

### Platform errors
- Double-check you uncommented the right platform line
- ARM64 = Apple Silicon
- AMD64 = Intel

## 💡 Pro Tips

- Save often (auto-compiles on save)
- Use `\textbf{bold}` not underlining
- Every claim needs a citation
- Figures need captions and references in text

## 📚 Need More Help?

See the full `README.md` for:
- Detailed instructions
- Citation examples
- Figure examples
- Troubleshooting
- LaTeX tips
