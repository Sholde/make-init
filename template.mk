################################################################################
# Makefile variables
################################################################################
# Target
TARGET=main

################################################################################
# Default target: make all
################################################################################
.PHONY: all
all: $(TARGET)

$(TARGET):

################################################################################
# Clean: removes everything that can be rebuilt
################################################################################
.PHONY: clean
clean:
	rm -Rf *~ $(TARGET)

################################################################################
# User help menu
################################################################################
.PHONY: help
help:
	@echo "################################################################### "; \
	@echo "This is the Makefile for the execution $(TARGET)"; \
	@echo "make help shows this extra information"; \
	@echo ""; \
	@echo "Usage: make target"; \
	@echo "target is one of:"; \
	@echo "  help                      : show this help message"; \
	@echo "  all                       : build the project"; \
	@echo "  clean                     : removes everything that can be rebuilt";
