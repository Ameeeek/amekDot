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
- waybar

### important note

dotfiles kittynya itu nda komplit, jadi kalo bisa fokus saja di bagian pluginnya, sama aliasesnya, karena itu yang penting, sisanya bisa mu custom sendiri lah karena tampilan ji, mengingat ini itu cuman hasil fork dari ricinganya orang, tapi kalo moko cek i bisa cek disini : https://github.com/prasanthrangan/hyprdots

# Requirements

sebelum mujalankan ini, pastikan dulu sudah terinstall

## Git

pake lah package manager apapun itu, tapi waktuku tulis ini readmenya pake arch ka, jadi pake yay

```
yay -S git
```

## stow

```
yay -S stow
```

# usage

buat pake dotfilesmu, ikuti ini

```
# clone dlu reponya, baru masuk ke direktorinya
stow .
# simpel kan ? wkkw
```

buat tambahin dotfiles, atau konfig lain tinggal tambahin

```
# tinggal pindahin filenya ke file dotfilesmu (ini dalam kondisi dalam direktori dotfiles)
cp ~/.zshrc .
# jangan lupa backup konfig orinya
mv ~/original/path/config/ ~/original/path/configbak
# example
mv ~/.config/kitty ~/.config/kittyBak
# another
mv ~/.zshrc ~/.zshrcBak

# lastly, tinggal jalanin stownya
stow .
```
