################################################################################
# Makefile variables
################################################################################
# Compiler and flags
CC=gcc
CFLAGS=-Wall -DNDEBUG
OFLAGS=-O2 -march=native -funroll-loops
DFLAGS=-g
IFLAGS=
LFLAGS=

# Directories
SRC=src
OBJ=obj
BIN=bin

# Target
TARGET=$(BIN)/main

################################################################################
# Default target: make all
################################################################################
.PHONY: all
all: prepare $(TARGET)

.PHONY: all
prepare:
	mkdir -p $(SRC) $(OBJ) $(BIN)

$(TARGET): $(OBJ)/main.o
	$(CC) $< -o $@ $(LFLAGS)

$(OBJ)/%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) $(OFLAGS) $(DFLAGS) $(IFLAGS) -c $< -o $@

################################################################################
# Clean: removes everything that can be rebuilt
################################################################################
.PHONY: clean
clean:
	rm -Rf *~ $(OBJ) $(BIN) $(TARGET)

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
	@echo "  clean                     : removes everything that can be rebuilt"; \
	@echo "  prepare                   : create empty directories for objects and binaries";
