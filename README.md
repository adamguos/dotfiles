# Dotfiles

To setup, run:

```sh
stow --target=$HOME/.config config
```

Add the following to `/etc/zshenv`:

```sh
ZDOTDIR=~/.config/zsh
```

CMU Typewriter: [https://fontlibrary.org/font/cmu-typewriter]

```sh
curl -O https://fontlibrary.org/assets/downloads/cmu-typewriter/b6d120f7029a2f8b50af39054e05f1ef/cmu-typewriter.zip
mkdir -p ~/.local/share/fonts/CMUTypewriter
rm cmu-typewriter.zip
```
