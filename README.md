# Mac Setup

## System Settings
- General &#8594; Software Update
- Trackpad
	- Point and Click &#8594;  _Tap with one finger_
	- More Gestures &#8594; _Swipe left/right, up with four fingers_, _Disable Launchpad_
	- Accessibility &#8594; Pointer Controls &#8594; Trackpad Options &#8594; _Use trackpad for draggin_ with _Three Finger Drag_
- WiFi -- Set AdGuard DNS `94.140.14.14` and `94.140.15.15`
- Control Center
- Desktop & Dock &#8594; Adjust size, no magnification, _Left, Scale Effect,_ uncheck _Show suggested and recent apps in Dock_. Remove unnecessary icons. Pin Desktop/Downloads in Folder mode
- Battery: Low Power Mode &#8594; Never
- Lock Screen
- Internet Accounts &#8594; _Google Contacts, Calendars_
- Keyboard &#8594; _Key repeat rate - Fast, Delay until repeat - Short_
- Finder &#8594; Show all filename extensions
- Enable repeating keys: `defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`
- Enable Always Open: `defaults write com.google.Chrome ExternalProtocolDialogShowAlwaysOpenCheckbox -bool true`
- Bluetooth Quality: `defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 80`
- Avoid creating .DS_Store files on network or USB volumes
`defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true; defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true`
- Disable disk image verification
`defaults write com.apple.frameworks.diskimages skip-verify -bool true; defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true; defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true`
## Software
### Basics
- Chrome (with Extensions toolbar), uBlock Origin
- Raycast (+ Window Management, + Coffee)
- Path Finder (Two Pane, Preferences &#8594; _Launch at Login_, Uncheck _Menu Bar_ icon, _Set as default_, File Size Base 2, Disable Shared, Recent Docs, Search For, Tags in sidebar, Features &#8594; Keyboard &#8594; Return/Enter key to Open Selected)
- Contexts (Launch at Login, Sidebar &#8594; Show sidebar on: No display, Rules &#8594; Add Finder, Cmd+tab &#8594; Disable Apps without windows)
- Fantastical (Default duration 30mins, Advanced &#8594; Google Maps)
- Spotify (Streaming Quality _Very High_)
- Messenger (Disable Open when you start, Disable Active Status), WhatsApp
- The Unarchiver, Hour, Logitech Options / Logitech G Hub
### Suites
- OneNote
- Lightroom, Photoshop, Nik Collection, Aurora HDR
## Development
- `xcode-select --install`
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
- Git ([local branches only](https://cmetcalfe.ca/blog/git-checkout-autocomplete-local-branches-only.html)), Git Credential Manager
- [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Retina)
- iTerm2
	- Appearance &#8594; Theme &#8594; Minimal, Exclude from Dock, Window &#8594; Hide scroll bars
	- Profiles/Text &#8594; Fira Code Retina, 13, Use Ligatures
	- Profiles/Terminal &#8594; Unlimited Scrollback
	- Profiles/Keys &#8594; Hotkey &#8594; Opt+Space / Pin / Disable animation
	- Profiles/Advanced &#8594; Hide from Menu Bar
	- [Option navigation](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)
	- Colors
	- Scrollback
- `oh-my-zsh`, `.zshrc`, `pygmalion-custom.theme` Dotfiles, `ripgrep`, `jq`, `fd`
- `fzf`, `/usr/local/opt/fzf/install` (Ctrl+R bindings)
- JDK
- VSCode + Extensions:
	- Copilot, Atom One Dark theme (Mahmoud Ali), Atom Keymap, vscode-icons, Markdown All-in-One,
	- Python, ESLint, Prettier, Go
	- GitLens, Git History, Code Runner
- Python -- Miniconda, `ipdb`, `virtualenv`, `numpy`, `scipy`, `pandas`, `matplotlib`, `scikit-learn`, `jupyter`, `jupyter-notebook-viewer`
- `node`, `go`
- `neovim`, [`vim-plug`](https://github.com/junegunn/vim-plug), [Make vim more like VSCode](https://www.youtube.com/watch?v=gnupOrSEikQ), vimrc (`:PlugInstall`)
- IntelliJ + Plugins
- Copy ZSH History
