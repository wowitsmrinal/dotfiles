# Mac Setup

## System Preferences
- Apple &#8594; About This Mac &#8594; Software Update (*or install latest version with `Cmd+Opt+R`*)
- Trackpad
	- Point and Click &#8594;  _Tap with one finger_
	- More Gestures &#8594; _Swipe left/right, up with four fingers_, _Disable Launchpad_
	- Accessibility &#8594; Pointer Controls &#8594; Trackpad Options &#8594; _Enable dragging_ with _three finger drag_
- Dock & Menu Bar &#8594; _Left, small, scale effect,_ uncheck _Show recent applications_. Remove unnecessary icons. Pin Desktop/Downloads in Folder mode; Battery to Percentage
- Keyboard &#8594; _Key Repeat Fast, Delay Until Repeat Short_
- Apple ID &#8594; Check Photos, Uncheck _iCloud Drive, iCloud Mail, Reminders, Safari, News, Stocks, Home, Siri_
- Internet Accounts &#8594; _Google Contacts, Calendars_
- Displays &#8594; Disable menu bar
- Language & Region &#8594; Celsius
- Finder &#8594; show user folder, show filename extensions
- Enable repeating keys: `defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`
- Enable Always Open: `defaults write com.google.Chrome ExternalProtocolDialogShowAlwaysOpenCheckbox -bool true`
- Bluetooth Quality: `defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 80`
- Avoid creating .DS_Store files on network or USB volumes
`defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true; defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true`
- Disable disk image verification
`defaults write com.apple.frameworks.diskimages skip-verify -bool true; defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true; defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true`
- Subpixel rendering `defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO`
## Software
### Basics
- Chrome (with Extensions toolbar)
- uBlock Origin
- Magnet (change shortcut to _Cmd+Opt_)
- Path Finder (Preferences &#8594; _Launch at Login_, Uncheck _Menu Bar_ icon, _Set as default_, File Size Base 2, Disable Shared, Recent Docs, Search For, Tags in sidebar)
- Contexts (Launch at Login, Sidebar &#8594; Show sidebar on no display, Rules &#8594; Add Finder, Cmd+tab &#8594; Disable Apps without windows)
- Amphetamine (Launch and Start Seesion at Login)
- Fantastical (Default duration 30mins, Advanced &#8594; Google Maps)
- BetterTouchTool (Pause)
- Spotify (Streaming Quality _Very High_, disable _Friend Activity_)
- VLC
- Messenger
- f.lux
- Pastebot
### Suites
- iMovie
- Word, Excel, PowerPoint, OneNote
- Lightroom, Photoshop, Nik Collection, Aurora HDR
### Others
- Backup & Sync, The Unarchiver, Logitech Options, Slack
## Development
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/cask
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip webpquicklook suspicious-package
```
- Git ([local branches only](https://cmetcalfe.ca/blog/git-checkout-autocomplete-local-branches-only.html))
- Xcode
- [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Retina/complete)
- iTerm2
	- Appearance &#8594; Theme &#8594; Minimal, Exclude from Dock, Window &#8594; Hide scroll bars
	- Profiles/Text &#8594; Fira Code Retina
	- Profiles/Terminal &#8594; Unlimited Scrollback
	- Profiles/Keys &#8594; Hotkey &#8594; Opt+Space / Pin / Disable animation
	- Profiles/Advanced &#8594; Hide from Menu Bar
	- [Option navigation](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)
- `oh-my-zsh`, `.zshrc` and `pygmalion-custom.theme` Dotfiles, `broot`, `ncdu`, `ripgrep`, `pup`, `jq`
- `fzf`, `/usr/local/opt/fzf/install`
- [GitHub SSH key](https://sourabhbajaj.com/mac-setup/Git/), Global `.gitignore`
- JDK
- VSCode + Extensions:
	- Atom One Dark theme, Atom Keymap, vscode-icons, Markdown All-in-One, Bracket Pair Colorizer 2
	- Python, ESLint, Prettier, C/C++, Java Extension Pack, Go
	- GitLens, Git History, Code Runner, Docker, Remote - SSH/Containers
- Python -- Miniconda, `ipdb`, `virtualenv`, `numpy`, `scipy`, `pandas`, `matplotlib`
- Jupyter -- `jupyter jupyter_contrib_nbextensions` (+ [Font](http://www.abarbon.com/posts/firacode-font-on-jupyter), Autopep8, AutoSaveTime, Code Font Size, Codefolding, Collapsible Headings, ExecuteTime, Highlight Selected Word, Hinterland, Live Markdown Preview, Notify, Scratchpad, ScrollDown, Table of Contents(2), table_beautifier, Toggle all line numbers, Variable Inspector), `jupyter-notebook-viewer`
- `node`, `go`
- `neovim`, [`vim-plug`](https://github.com/junegunn/vim-plug), [Make vim more like VSCode](https://www.youtube.com/watch?v=gnupOrSEikQ), vimrc
