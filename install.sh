#!/bin/bash

# Ask for Leave Skill - Installation Script
# For macOS and Linux

set -e

echo "========================================="
echo "  Ask for Leave Skill - Installer"
echo "========================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Determine the installation directory
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    SKILL_DIR="$HOME/Library/Application Support/qianfan-desktop-app/qianfan_desk_xdg/global/data/skills"
else
    # Linux
    SKILL_DIR="$HOME/.config/qianfan-desktop-app/qianfan_desk_xdg/global/data/skills"
fi

echo "Installation directory: $SKILL_DIR"
echo ""

# Check if the skill already exists
if [ -d "$SKILL_DIR/ask-for-leave" ]; then
    echo -e "${YELLOW}Warning: ask-for-leave skill already exists.${NC}"
    read -p "Do you want to overwrite it? (y/N) " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Installation cancelled."
        exit 1
    fi
    echo "Removing existing installation..."
    rm -rf "$SKILL_DIR/ask-for-leave"
fi

# Create the skills directory if it doesn't exist
echo "Creating skills directory..."
mkdir -p "$SKILL_DIR"

# Get the script directory (where the skill files are)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy the skill files
echo "Copying skill files..."
cp -r "$SCRIPT_DIR" "$SKILL_DIR/ask-for-leave"

# Remove the install script from the installed directory
rm -f "$SKILL_DIR/ask-for-leave/install.sh"
rm -f "$SKILL_DIR/ask-for-leave/install.ps1"

echo ""
echo -e "${GREEN}✓ Installation successful!${NC}"
echo ""
echo "The 'ask-for-leave' skill has been installed to:"
echo "$SKILL_DIR/ask-for-leave"
echo ""
echo "To use it, restart your Qianfan DuMate application."
echo ""
echo "========================================="
echo "  Installation Complete!"
echo "========================================="
