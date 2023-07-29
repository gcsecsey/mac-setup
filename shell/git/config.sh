#!/bin/sh

echo ">> Update git config"
git config --global commit.gpgsign true
git config --global core.editor nano
git config --global init.defaultBranch main