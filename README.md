# Amek Dotfiles

Ini repository tempat ku simpan dan kelola dotfiles alias konfigurasi untuk beberapa library/package yang kupake so far
yang jelas ini itu beda lagi sama tempatku untuk simpan dan kelola i ricing ku, disini itu cuman config config ku

# Current Dotfiles

- Kitty
- NVIM, basically ya ini forknya dari pojokcode, tapi sudah kumodif untuk :
  - optimal untuk wengdev
  - venn.nvim
  - vimgetgood
  - lazygit
  - multi line editing
  - obsidian dan latex
- zshenv dan zshrc
  - zshenv ada kukasih i supaya bisa dipake fcitx5 (ini buat gonta ganti layout
    keyboard)
  - zshrc itu ada librarynya:
    - zsh-autosuggestions (ctrl + n, buat masuk)
    - zsh-syntax-highlighting
    - zsh-history-substring-search (ctrl + p, buat masuk)

# Requirements

sebelum mujalankan ini, pastikan dulu sudah terinstall

## GIT

pake lah package manager apapun itu, tapi waktuku tulis ini readmenya pake arch ka, jadi pake yay

```
yay -S git
```

## stow

```
yay -S stow
```

# usage

```
# clone dlu reponya, baru masuk ke direktorinya
stow .
# simpel kan ? wkkw
```
