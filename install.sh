#!/bin/bash

set -eufo pipefail

echo ""
echo "🤚  This script will setup .dotfiles for you."
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'


# Install Homebrew
command -v brew >/dev/null 2>&1 || \
  (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")

# Install chezmoi
command -v chezmoi >/dev/null 2>&1 || \
  (echo '👊  Installing chezmoi' && brew install chezmoi)

if [ -d "$HOME/.local/share/chezmoi/.git" ]; then
  echo "🚸  chezmoi already initialized"
  echo "    Reinitialize with: 'chezmoi init https://github.com/guid-ooo/dotfiles.git'"
else
  echo "🚀  Initialize dotfiles with:"
  echo "    chezmoi init https://github.com/guid-ooo/dotfiles.git"
fi

# Install WezTerm
command -v wezterm >/dev/null 2>&1 || \
  (echo '⌨️  Installing WezTerm' && brew install --cask wezterm)

# Install Fish
command -v fish >/dev/null 2>&1 || \
  (echo '🐟 Installing Fish' && brew install fish)

# Install Oh My Fish
if [ ! -f ~/.config/omf ]; then
  (echo '🐟  Installing oh-my-fish' && yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
fish install --path=~/.local/share/omf --config=~/.config/omf)")
fi

echo ""
echo "Done."
