# Change Directory to Home i.e ~/ .....
cd

# Copy Bashrc
echo "________________Copying Bashrc_____________________"
cp -v .bashrc .bashrc_backup system_configurations/Bashrc


# Copy Instalation Logs
echo "________________Copying InstallationLogs_____________________"
cp -v packages.txt system_configurations/InstallationLogs

# Copy Sway Configs
echo "________________Copying Sway Configs_____________________"
cp -v .config/sway/config system_configurations/Sway


# Copy Terminator Config
echo "________________Copying Terminator Configs_____________________"
cp -v .config/terminator/config system_configurations/Terminator

# Copy Neovim Config
echo "________________Copying Neovim Configs_____________________"
cp -v -r .config/nvim/* system_configurations/Neovim


# Copy Helix Config
echo "________________Copying Helix Configs_____________________"
cp -v -r .config/helix/* system_configurations/Helix




# Copy SystemUtilities
echo "________________Copying SystemUtilities_____________________"
cp -v -r system_utils/* system_configurations/SystemUtilities


# Copy Tmux Configs
echo "________________Copying Tmux_____________________"
cp -v -r .tmux.conf system_configurations/Tmux



# Copy Alacritty Configs
echo "________________Copying Alacritty_____________________"
cp -v -r .config/alacritty/* system_configurations/Alacritty


# Copy Zellij Configs
echo "________________Copying Zellij_____________________"
cp -v -r .config/zellij/* system_configurations/Zellij






# Taking Snapshot of custom_binaries
echo "________________Taking Snapshot Of Custom_Binaries_____________________"
tree -L 1 custom_binaries/ > system_configurations/CustomBinaries/tree_structure.txt

# Taking Snapshots of other_binaries
echo "________________Taking Snapshot Of Other_Binaries_____________________"
tree -L 1 other_binaries/ > system_configurations/OtherBinaries/tree_structure.txt


# Copy Webcam Config
echo "________________Copying WebCam Config_____________________"
cp -v  /etc/modprobe.d/blacklist.conf  system_configurations/Webcam



# Manually Backup...
echo "________________Backup These Manually_____________________________________"
echo "1. FreeTube"
echo "2. Vscode"



