#!/bin/sh

# Set Dark mode
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Reduce transparency
defaults write com.apple.Accessibility EnhancedBackgroundContrastEnabled -bool true