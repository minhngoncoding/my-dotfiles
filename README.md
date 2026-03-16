# 🛠️ .dotfiles

My configurations on **Arch Linux** managed with **GNU Stow**.

---

# 💻 Tech
* **WM:** Hyprland
* **Editor:** Neovim
* **File Manager:** Yazi
* **Shell:** Zsh
* **Terminal:** Kitty

---

# 🚀 Setup
1. **Install GNU Stow**
   ```bash
   sudo pacman -S stow

2. **Clone and Link**
   ```bash
    git clone [https://github.com/minhngoncoding/dotfiles.git](https://github.com/minhngoncoding/dotfiles.git) ~/dotfiles
    cd ~/dotfiles

    # Symlinks all folders to ~/.config
    stow . -t ~/.config

