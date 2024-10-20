### Installation
```bash
nix-shell -p git --run "git clone https://github.com/lokasku/nix-config.git /wherever/you/want"
```

### Usage
```bash
sudo nixos-rebuild switch --flake /path/to/configuration --impure
# or on the next boot
sudo nixos-rebuild boot --flake /path/to/configuration --impure
```
