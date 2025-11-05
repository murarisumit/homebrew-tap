# Homebrew Tap for aprofile

This is a [Homebrew](https://brew.sh) tap for [aprofile](https://github.com/murarisumit/aprofile) - an AWS profile switcher.

## Installation

```bash
brew tap murarisumit/tap
brew install aprofile
```

## Setup

After installation, add the shell integration to your shell config:

**Bash** (~/.bashrc or ~/.bash_profile):
```bash
eval "$(aprofile --init bash)"
```

**Zsh** (~/.zshrc):
```zsh
eval "$(aprofile --init zsh)"
```

**Fish** (~/.config/fish/config.fish):
```fish
aprofile --init fish | source
```

Then reload your shell or open a new terminal.

## Usage

```bash
# List available profiles
aprofile --list

# Switch to a profile
aprofile myprofile

# Check version
aprofile --version
```

## More Info

See the main repository for more details: https://github.com/murarisumit/aprofile
