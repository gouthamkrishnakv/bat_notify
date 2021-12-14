#!/bin/sh
# Make sure to exit with the non-zero code when any command fails
set -e
echo -e "\e[34mRemove any previous directories if existed.\e[0m"
rm -rf ~/.bat_notify/
# Make a file directory for download source code
echo -e "\e[34mCreate .bat_notify in $HOME.\e[0m"
mkdir -p ~/.bat_notify
# Switch to that repository
echo -e "\e[34mSwitching to directory $HOME/.bat_notify.\e[0m"
cd ~/.bat_notify
# Clone my Repository
echo -e "\e[34mCloning Source Repository.\e[0m"
git clone https://github.com/gauthamkrishna9991/bat_notify
# get into bat_notify directory
echo -e "\e[34mSwitch to bat_notify folder.\e[0m"
cd ./bat_notify
# Run the install script
echo -e "\e[34mRunning Install Script.\e[0m"
./install.sh
echo -e "\e[34mFinished Installation. Installing uninstall script.\e[0m"
# Also install the uninstall-bat-notify script.
ln -s ~/.local/bin/uninstall_bat_notify ~/.bat_notify/bat_notify/uninstall-bat-notify.sh