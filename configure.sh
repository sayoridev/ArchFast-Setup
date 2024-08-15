echo installing package
sleep 1
wait
clear

sudo pacman -Syu --noconfirm p7zip konsole dolphin okular ark ffmpegthumbs unrar kate unarchiver ntfs-3g zsh power-profiles-daemon
xclip python-pynvim neovim discord steam spotify-launcher neofetch kdialog catimg chafa xdotool gamemode mangohud obs-studio v4l2loopback-dkms
lib32-mesa vulkan-intel lib32-vulkan-intel intel-media-driver libva-mesa-driver mesa-vdpau libva-nvidia-driver qt5-quickcontrols2 qt5-quickcontrols
qt5-graphicaleffects kio-admin dolphin-emu podman distrobox gimp flameshot wine-mono lib32-vkd3d wine-gecko vkd3d ttf-fira-code obs-studio onevpl-intel-gpu
python-pip

sleep 1.5
wait
clear

sudo systemctl enable --now podman bluetooth
clear

echo installing paru
sleep 1
wait
clear

git clone https://aur.archlinux.org/paru-git.git
makepkg -si

clear
echo installing aur package
sleep 1
wait
clear

paru -S brave-bin visual-studio-code-bin google-chrome heroic-games-launcher-bin cemu-bin usbhelper

echo installing spotify
sleep 1
wait
clear

spotify-launcher

PROCESS_NAME=/home/$user/.local/share/spotify-launcher/install/usr/share/spotify/spotify

while true; do
    PROCESS_PID=$(pgrep -f "$PROCESS_NAME")
    
    if [ -n "$PROCESS_PID" ]; then
        kill -9 $PROCESS_PID
        echo "Processo $PROCESS_NAME (PID: $PROCESS_PID) terminato."
    fi

    sleep 1
done

bash <(curl -sSL https://spotx-official.github.io/run.sh) -cd

clear
echo "Finish"
exit