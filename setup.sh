
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
    echo "Unzipping $ZIP_FILE into $HOME"
    unzip "$ZIP_FILE" -d "$HOME"
else
    echo "Zip file $ZIP_FILE not found!"
fi

if [ -f "termux-setup.zip" ]; then
   echo "termux-setup.zip found"
   rm -rf termux-setup.zip
else
   echo "System skiping to unzip termux-setup.zip as not found"
fi


#pkg update -y
#pkg upgrade -y
#pkg install root-repo -y
#pkg install x11-repo -y
#pkg install tur-repo -y
#pkg install tree -y
#pkg install python -y
#pkg install nodejs -y
#pkg install clang -y
#pip install colorama selenium flask flask-sockecio -y


