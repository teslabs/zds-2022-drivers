# Slides Makefile
#
# Gerard Marull-Paretas <gerard@teslabs.com>
# Copyright (c) 2021 Teslabs Engineering S.L.

# programs
MKDIR       := mkdir
LATEXMK     := latexmk
PDFLATEX    := pdflatex
CHKTEX      := chktex
LATEXINDENT := latexindent

# options
BUILD_DIR   := build
PDF_OPTS    := -shell-escape -interaction=nonstopmode

# sources
SOURCES      := slides.tex
SOURCES_PDF  := $(patsubst %.tex,$(BUILD_DIR)/%.pdf,$(SOURCES))
SOURCES_LINT := $(patsubst %.tex,lint-%,$(SOURCES))
SOURCES_FMT  := $(patsubst %.tex,fmt-%,$(SOURCES))

.PHONY: all lint fmt clean

all: $(SOURCES_PDF)

$(BUILD_DIR)/%.pdf: %.tex | $(BUILD_DIR)
	$(LATEXMK) \
		-pdf \
		-pdflatex="$(PDFLATEX) $(PDF_OPTS)" \
		-jobname=$(patsubst %.pdf,%,$@) \
		$<

$(BUILD_DIR):
	$(MKDIR) -p $(BUILD_DIR)

lint: $(SOURCES_LINT)
lint-%: %.tex
	$(CHKTEX) $<

fmt: $(SOURCES_FMT)
fmt-%: %.tex
	$(LATEXINDENT) -s -l -w $<

clean:
	rm -rf $(BUILD_DIR) _minted-* *.log *.bak*
