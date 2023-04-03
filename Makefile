#

SHELL := /bin/bash
INTERACTIVE := $(shell [ -t 0 ] && echo 1)

root_mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
export REPO_ROOT_DIR := $(dir $(root_mkfile_path))

.PHONY: resume
resume: resume.tex
resume: resume.cls
resume: resume.pdf

resume.pdf:
	pdflatex resume.tex

.PHONY: clean
clean:
	rm -f resume.pdf *.out *.aux *.log
