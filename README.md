# Homebrew Tap

This is a [Homebrew](https://brew.sh) tap for my command-line tools.

## Available Tools

### aprofile
AWS profile switcher - quickly switch between AWS profiles with shell integration.

**Repository:** https://github.com/murarisumit/aprofile

### kcontext
Kubernetes kubeconfig switcher - easily switch between kubeconfig files.

**Repository:** https://github.com/murarisumit/kcontext

## Installation

```bash
# Add the tap
brew tap murarisumit/tap

# Install tools
brew install aprofile
brew install kcontext
```

## Setup

### aprofile

Add shell integration to your shell config:

**Bash** (~/.bashrc):
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

**Usage:**
```bash
aprofile --list              # List AWS profiles
aprofile myprofile           # Switch to profile
```

### kcontext

Add shell integration to your shell config:

**Bash** (~/.bashrc):
```bash
eval "$(kcontext --init bash)"
```

**Zsh** (~/.zshrc):
```zsh
eval "$(kcontext --init zsh)"
```

**Fish** (~/.config/fish/config.fish):
```fish
kcontext --init fish | source
```

**Usage:**
```bash
kcontext --list                    # List kubeconfig files
kcontext my-cluster.kubeconfig     # Switch to kubeconfig
```

## Quick Start

```bash
# One-time setup
brew tap murarisumit/tap
brew install aprofile kcontext

# Add to your shell config (choose your shell)
echo 'eval "$(aprofile --init bash)"' >> ~/.bashrc
echo 'eval "$(kcontext --init bash)"' >> ~/.bashrc

# Reload your shell
source ~/.bashrc
```

## More Information

- [aprofile repository](https://github.com/murarisumit/aprofile)
- [kcontext repository](https://github.com/murarisumit/kcontext)
