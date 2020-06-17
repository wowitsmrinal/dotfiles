# Mac Setup

## System Preferences
- Apple &#8594; About This Mac &#8594; Software Update (*or install latest version with `Cmd+Opt+R`*)
- Trackpad
	- Point and Click &#8594;  _Tap with one finger_
	- More Gestures &#8594; _Swipe left/right, up with four fingers_, _Disable Launchpad_
	- Accessibility &#8594; Pointer Controls &#8594; Trackpad Options &#8594; _Enable dragging_ with _three finger drag_
- Dock &#8594; _Left, small, scale effect,_ uncheck _Show recent applications_. Remove unnecessary icons. Pin Desktop/Downloads in Folder mode
- Keyboard &#8594; _Key Repeat Fast, Delay Until Repeat Short_, Modifier Keys &#8594; Caps Lock to Escape, Input Source &#8594; Disable menu bar
- Apple ID &#8594; Photo, Uncheck _Mail, Reminders, Safari, Siri, News, Stocks, Home_
- Internet Accounts &#8594; _Google Contacts, Calendars_
- Displays &#8594; Disable menu bar, Turn on Night Shift
- Date & Time &#8594; Clock &#8594; Show date
- Language & Region &#8594; Celsius
- Finder &#8594; show user folder, show filename extensions
- Menu Bar &#8594; Battery to Percentage
- Enable repeating keys: `defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`
- Enable Always Open: `defaults write com.google.Chrome ExternalProtocolDialogShowAlwaysOpenCheckbox -bool true`
## Software
### Basics
- Chrome (with Extensions toolbar)
- AdGuard
- HyperDock (change shortcut to _Cmd+Opt_)
- Path Finder (Preferences &#8594; _Launch at Login_, Uncheck _Menu Bar_ icon, _Set as default_, File Size Base 2, Disable Shared, Recent Docs, Search For, Tags in sidebar)
- Contexts (Launch at Login, Sidebar &#8594; Show sidebar on no display, Rules &#8594; Add Finder, Cmd+tab &#8594; Disable Apps without windows)
- Amphetamine (Launch and Start Seesion at Login)
- Fantastical (Default duration 30mins, Advanced &#8594; Google Maps)
- BetterTouchTool (Pause)
- Spotify (Streaming Quality _Very High_, disable _Friend Activity_)
- VLC (`alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'`)
### Suites
- iMovie
- Word, Excel, PowerPoint, OneNote
- Lightroom, Photoshop, Nik Collection, Aurora HDR
### Others
- Backup & Sync, Disk Inventory X, Folx Go, MPT, The Unarchiver, Logitech Options, External Keyboard Modifier
## Development
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/cask
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json \
	qlprettypatch quicklook-csv betterzip webpquicklook suspicious-package
```
- Xcode
- [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Retina/complete)
- iTerm2
	- Appearance &#8594; Theme &#8594; Minimal, Exclude from Dock, Window &#8594; Hide scroll bars
	- Profiles/Text &#8594; Fira Code Retina
	- Profiles/Terminal &#8594; Unlimited Scrollback
	- Profiles/Keys &#8594; Hotkey &#8594; Opt+Space / Pin / Disable animation
	- Profiles/Advanced &#8594; Hide from Menu Bar
- `oh-my-zsh`, `.zshrc` and `pygmalion-custom.theme` Dotfiles, `tree`, `ripgrep` 
- `fzf`, `/usr/local/opt/fzf/install`
- [GitHub SSH key](https://sourabhbajaj.com/mac-setup/Git/), Global `.gitignore`
- JDK
- VSCode + Extensions:
	- Atom One Dark theme, Atom Keymap, vscode-icons, Markdown All-in-One, Bracket Pair Colorizer 2
	- Python, ESLint, Prettier, C/C++, Java Extension Pack, Go
	- GitLens, Git History, Code Runner, Docker, Remote - SSH/Containers
- Python -- Miniconda, `virtualenv`, `numpy`, `scipy`, `pandas`, `matplotlib`
- Jupyter -- `jupyter` (+ [Font](http://www.abarbon.com/posts/firacode-font-on-jupyter), AddBefore, Autopep8, AutoSaveTime, Code Font Size, Codefolding, Collapsible Headings, ExecuteTime, Highlight Selected Word,  Hinterland, Notify, ScrollDown), `jupyter-notebook-viewer`
- `node`, `go`
- `neovim`, [`vim-plug`](https://github.com/junegunn/vim-plug), [Make vim more like VSCode](https://www.youtube.com/watch?v=gnupOrSEikQ), `nvim`, `pynvim`

## Remote Server
- Eternal Terminal
- Byobu
