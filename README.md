# Mac Setup

## System Preferences
- Apple &#8594; About This Mac &#8594; Software Update (*or install latest version with `Cmd+Opt+R`*)
- Trackpad
	- Point and Click &#8594;  _Tap with one finger_
	- More Gestures &#8594; _Swipe left/right, up with four fingers_, _Disable Launchpad_
	- Accessibility &#8594; Pointer Controls &#8594; Trackpad Options &#8594; _Enable dragging_ with _three finger drag_
- Dock & Menu Bar &#8594; _Left, small, scale effect,_ uncheck _Show recent applications_. Remove unnecessary icons. Pin Desktop/Downloads in Folder mode; Battery to Percentage
- Keyboard &#8594; _Key Repeat Fast, Delay Until Repeat Short_, Text &#8594; Uncheck right three settings
- Apple ID &#8594; Check Photos, Uncheck _iCloud Drive, iCloud Mail, Reminders, Safari, News, Home, Siri_
- Internet Accounts &#8594; _Google Contacts, Calendars_
- Language & Region &#8594; Celsius
- Sound &#8594; Show Sound in menu bar (always)
- Finder &#8594; Show all filename extensions
- Battery: Battery &#8594; 10min, Show battery status, Power Adapter &#8594; 30min, Prevent Mac from sleeping,
- Security: Require password immediately
- Enable repeating keys: `defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`
- Enable Always Open: `defaults write com.google.Chrome ExternalProtocolDialogShowAlwaysOpenCheckbox -bool true`
- Bluetooth Quality: `defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 80`
- Avoid creating .DS_Store files on network or USB volumes
`defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true; defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true`
- Disable disk image verification
`defaults write com.apple.frameworks.diskimages skip-verify -bool true; defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true; defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true`
- Subpixel rendering `defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO`
- WiFi DNS 94.140.14.14 / 94.140.15.15
## Software
### Basics
- Chrome (with Extensions toolbar), uBlock Origin
- Magnet (change shortcut to _Cmd+Opt_)
<img width="430" alt="image" src="https://user-images.githubusercontent.com/1424283/158891885-883981a1-eecc-478a-8e5c-603a9e67cbd4.png">

- Path Finder (Two Pane, Preferences &#8594; _Launch at Login_, Uncheck _Menu Bar_ icon, _Set as default_, File Size Base 2, Disable Shared, Recent Docs, Search For, Tags in sidebar, Features &#8594; Keyboard &#8594; Return/Enter key to Open Selected)
- Contexts (Launch at Login, Sidebar &#8594; Show sidebar on: No display, Rules &#8594; Add Finder, Cmd+tab &#8594; Disable Apps without windows)
- Amphetamine (Launch and Start Session at Login)
- Fantastical (Default duration 30mins, Advanced &#8594; Google Maps)
- Spotify (Streaming Quality _Very High_)
- Messenger (Disable Open when you start, Disable Active Status
- Alfred (Disable Spotlight, Powerpack, Command Space, United States, Search through Preferences, Contacts, Folders, Documents, Remove all except PreferencePanes from search scope, Web Bookmarks &#8594; Chrome, Clipboard History &#8594; Keep Plain Text, Keep Images, Cmd+Shift+D, Appearance &#8594; Alfred Modern Dark, Options &#8594; Hide Hat, Hide Menu bar icon)
- Zoom (General &#8594; Copy invite link, Show meeting duration, Uncheck Add to menu bar, Video &#8594; Always display participant name, 49 participants, Stop my video when joining a meeting, Audio &#8594; Mute my mic when joining a meeting, Background & Filters &#8594; Blur)
- VLC, Soda Player, f.lux, Google Drive, The Unarchiver, Logitech Options / Logitech G Hub, Slack, Vanilla, Elgato Cam Link 4k, Hour, Kindle, Parcel (Days till delivery), uTorrent, WhatsApp
### Suites
- OneNote
- Lightroom, Photoshop, Nik Collection, Aurora HDR
## Development
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/cask
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip webpquicklook suspicious-package
```
- Git ([local branches only](https://cmetcalfe.ca/blog/git-checkout-autocomplete-local-branches-only.html))
- [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Retina/complete)
- iTerm2
	- Appearance &#8594; Theme &#8594; Minimal, Exclude from Dock, Window &#8594; Hide scroll bars
	- Profiles/Text &#8594; Fira Code Retina, 13, Use Ligatures
	- Profiles/Terminal &#8594; Unlimited Scrollback
	- Profiles/Keys &#8594; Hotkey &#8594; Opt+Space / Pin / Disable animation
	- Profiles/Advanced &#8594; Hide from Menu Bar
	- [Option navigation](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)
	- Colors
	- Scrollback
- `oh-my-zsh`, `.zshrc`, `pygmalion-custom.theme` Dotfiles, `broot`, `ncdu`, `ripgrep`, `pup`, `jq`, `tldr`, `fd`, `nnn`
- `fzf`, `/usr/local/opt/fzf/install`
- [GitHub SSH key](https://sourabhbajaj.com/mac-setup/Git/), Global `.gitignore`
- JDK
- VSCode + Extensions:
	- Atom One Dark theme, Atom Keymap, vscode-icons, Markdown All-in-One,
	- Python, ESLint, Prettier, C/C++, Java Extension Pack, Go
	- GitLens, Git History, Code Runner, Docker, Remote - SSH/Containers
- Python -- Miniconda, `ipdb`, `virtualenv`, `numpy`, `scipy`, `pandas`, `matplotlib`
- Jupyter -- `jupyter jupyter_contrib_nbextensions` (+ [Font](http://www.abarbon.com/posts/firacode-font-on-jupyter), Autopep8, AutoSaveTime, Code Font Size, Codefolding, Collapsible Headings, ExecuteTime, Highlight Selected Word, Hinterland, Live Markdown Preview, Notify, Scratchpad, ScrollDown, Table of Contents(2), table_beautifier, Toggle all line numbers, Variable Inspector), `jupyter-notebook-viewer`
- `node`, `go`
- `neovim`, [`vim-plug`](https://github.com/junegunn/vim-plug), [Make vim more like VSCode](https://www.youtube.com/watch?v=gnupOrSEikQ), vimrc
