# Preparation
1. Fork this repo
2. Update `brew/Brewfile` with your preferred apps
3. Replace your GH username in all files

# Setting up your machine

1. Login to the App Store in the background (before mac apps get installed)
2. Run `bash <(curl -s https://raw.githubusercontent.com/cpapazoglou/mac-setup/main/bootstrap.sh)`
3. Log out and back in to apply OSX changes (can be done at the end)
4. Restore the list of Manual Items (below)
5. Run `sh repos/clone.sh` to clone all repos

# Manual items

## Alfred
Open `Preferences > Advanced > Set Preferences Folder` and set restore the backup

## iStat Menus
Restore the backup

## Manually
1. Copy ~/.ssh
2. Copy ~/.SwitchHosts
3. Copy ~/.gitconfig
4. Run `nvm install node`

## AutoProxy 
Link: https://fieldguide.automattic.com/autoproxxy/

# Updating the codebase over time

## Brew packages
```bash
rm -f brew/Brewfile && brew bundle dump --file=brew/Brewfile
```

Once you have fish setup, the function `brewfile` will do the above command for you.