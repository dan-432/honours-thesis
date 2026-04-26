FROM debian:bullseye-slim

# Use build args for customization
ARG USER_NAME=latex
ARG USER_HOME=/home/latex
ARG USER_ID=1000
ARG USER_GECOS=LaTeX

# Create user
RUN adduser \
  --home "$USER_HOME" \
  --uid $USER_ID \
  --gecos "$USER_GECOS" \
  --disabled-password \
  "$USER_NAME"

# Install only essential packages
RUN apt-get update && apt-get install -y --no-install-recommends \
  texlive \
  texlive-latex-extra \
  biber \
  texlive-pictures \
  texlive-science \
  texlive-bibtex-extra \
  latexmk \
  make \
  git \
  wget \
  python3-pygments && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

# Set working directory
WORKDIR $USER_HOME
USER $USER_NAME

# Add a healthcheck
HEALTHCHECK CMD pdflatex --version || exit 1

# Add labels for better maintainability
LABEL maintainer="bioc490-student" \
  description="Lightweight LaTeX environment for BIOC490 thesis" \
  version="1.0"
