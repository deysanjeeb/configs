#!/bin/bash

BACKUP_DIR=~/kde-backup
mkdir -p "$BACKUP_DIR"

echo "📦 Saving package list..."
dpkg --get-selections > "$BACKUP_DIR/package-list.txt"

echo "🎨 Backing up KDE/Plasma config..."
mkdir -p "$BACKUP_DIR/kde-config"

# Copy KDE config and plasma settings
cp -r ~/.config/plasma* "$BACKUP_DIR/kde-config/"
cp -r ~/.config/kde* "$BACKUP_DIR/kde-config/"
cp -r ~/.config/kwin* "$BACKUP_DIR/kde-config/"
cp -r ~/.config/kscreenlockerrc "$BACKUP_DIR/kde-config/"
cp -r ~/.config/latte* "$BACKUP_DIR/kde-config/" # if using Latte Dock

# Konsole profiles and colors
cp -r ~/.local/share/konsole "$BACKUP_DIR/"

# Custom scripts, themes, and wallpapers (optional)
mkdir -p "$BACKUP_DIR/themes"
cp -r ~/.local/share/plasma/look-and-feel "$BACKUP_DIR/themes/" 2>/dev/null
cp -r ~/.local/share/wallpapers "$BACKUP_DIR/themes/" 2>/dev/null

# Fonts and cursors
cp -r ~/.fonts "$BACKUP_DIR/" 2>/dev/null
cp -r ~/.icons "$BACKUP_DIR/" 2>/dev/null

echo "✅ Backup complete in $BACKUP_DIR"

