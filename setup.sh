
echo "Mahadi @RSIO v.0.1"

sleep 0.5

echo "[Git] Github: https://www.github.com/Mahadi-rsio"

sleep 0.5

echo "[WARN] This Project is for personal uses only"

sleep 0.5

echo "[WARN] Some issue will found while using"

sleep 0.5

echo "[WARN] Some functionality may not works properly "

sleep 0.5

echo "[INFO] Checking System"

sleep 0.5

echo "[INFO] System ready for installation"

clear

HIDDEN_FOLDER="$HOME/.config"
ZIP_FILE="nvchad.zip"  

if [ -f "$ZIP_FILE" ]; then
    if [ -f "$HOME/.config"]; then
	echo "already unzipped"
    else
	echo "Unzipping $ZIP_FILE into $HOME"
        unzip "$ZIP_FILE" -d "$HOME"
    fi
else
    echo "Zip file $ZIP_FILE not found!"
fi

if [ -f "$HOME/termux-setup.zip" ]; then
   echo "termux-setup.zip found"
   
else
   echo "System skiping to unzip termux-setup.zip as not found"
fi

rm -rf $HOME/.termux
cp -r .termux $HOME


pkg update -y
pkg upgrade -y
pkg install root-repo -y
pkg install x11-repo -y
pkg install tur-repo -y
pkg install git -y
pkg install neovim -y
pkg install tree -y
pkg install python -y
pkg install nodejs -y
pkg install clang -y
pkg i python-pandas -y
pkg i python-lxml -y
pkg i chromium -y
pkg install zip
pip install colorama selenium flask flask-sockecio

cd ~
apt autoremove

nvim .
