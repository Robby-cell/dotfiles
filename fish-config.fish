if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.cargo/bin

zoxide init fish | source

fish_add_path /home/robert/.pixi/bin
pixi completion --shell fish | source

set VCPKG_ROOT /home/robert/.vcpkg
set ZED_ALLOW_EMULATED_GPU 1

fish_add_path /home/robert/.apps
fish_add_path $VCPKG_ROOT
fish_add_path /root/.local/bin
fish_add_path /home/robert/.surrealdb

# uv
fish_add_path "/home/robert/snap/code/208/.local/share/../bin"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# uv
fish_add_path "/home/robert/snap/code/212/.local/share/../bin"

# Zerobrew environment variables
set -x ZEROBREW_DIR "$HOME/.zerobrew"
set -x ZEROBREW_BIN "$HOME/.local/bin"
set -x ZEROBREW_ROOT "$HOME/.local/share/zerobrew"
set -x ZEROBREW_PREFIX "$HOME/.local/share/zerobrew/prefix"

# pkg-config
set -x PKG_CONFIG_PATH \
    "$ZEROBREW_PREFIX/lib/pkgconfig" \
    $PKG_CONFIG_PATH

# Zerobrew paths
fish_add_path "$ZEROBREW_BIN"
fish_add_path "$ZEROBREW_PREFIX/bin"
fish_add_path "$HOME/.local/share/zerobrew/prefix/bin"
fish_add_path "$HOME/snap/code/220/.local/share/zerobrew/prefix/bin"

alias ll "eza -lh --git --group-directories-first -s extension --icons"

set -gx ZELLIJ_AUTO_EXIT true
zellij setup --generate-auto-start fish | source

