#!/bin/sh

MAKE_INIT_DIR=~/.make-init.d
BINARY_INPUT=make-init.sh.in
BINARY_OUTPUT=make-init
INSTALL_DIR=/usr/local/bin

mkdir -p $MAKE_INIT_DIR
cp *.mk $MAKE_INIT_DIR
cp $BINARY_INPUT $INSTALL_DIR/$BINARY_OUTPUT
