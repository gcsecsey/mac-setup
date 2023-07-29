#!/bin/sh

source common/functions.sh

# Dock
echo ">> Setup dock parameters"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock tilesize -float 64
defaults write com.apple.dock orientation bottom
defaults write com.apple.dock mineffect genie
defaults write com.apple.dock minimize-to-application true
delete_if_available com.apple.dock persistent-apps
defaults write com.apple.dock show-recents -bool false
echo ">> Restarting Dock"
killall Dock

# Siri
echo ">> Hiding Siri"
defaults write com.apple.Siri StatusMenuVisible 0
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" 0

# Battery and time on the menu
delete_if_available com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery"
delete_if_available com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.clock"
delete_if_available com.apple.systemuiserver menuExtras
delete_if_available com.apple.systemuiserver "NSStatusItem Visible DoNotDisturb"

# Airplay
defaults write com.apple.airplay showInMenuBarIfPresent false

echo ">> Restarting SystemUIServer"
killall -KILL SystemUIServer