set -e                  # exit on error
set -o pipefail         # exit on pipeline error
set -u                  # treat unset variable as error

print_ok "Installing wallpaper..."
install -Dm644 ./Fluent-building-night.png /usr/share/backgrounds/Fluent-building-night.png
install -Dm644 ./Fluent-building-light.png /usr/share/backgrounds/Fluent-building-light.png
judge "Installing wallpaper"
