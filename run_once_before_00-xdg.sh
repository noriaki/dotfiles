#!/bin/bash
# run_once_before_00-xdg.sh - Create XDG directories
# This script runs once before chezmoi applies dotfiles

set -e

echo "=== Creating XDG directories ==="

mkdir -p "${HOME}/.config"
mkdir -p "${HOME}/.local/share"
mkdir -p "${HOME}/.local/state"
mkdir -p "${HOME}/.cache"

echo "XDG directories created."
