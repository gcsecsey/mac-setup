#!/bin/sh

echo ">> Setting ~/$USER as the finder home"
defaults write com.apple.finder NewWindowTarget "PfHm"
defaults write com.apple.finder NewWindowTargetPath "file:///Users/$USER/"

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view in all Finder windows 
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable network Store writes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE

# Save pane extended
defaults write -g NSNavPanelExpandedStateForSaveMode -bool yes

killall Finder