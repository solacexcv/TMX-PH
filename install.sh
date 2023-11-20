directory_path="$PREFIX/TMX-PH"

if [ -d "$directory_path" ]; then
    echo "#-------------TMX-PH---------------" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "alias learn='bash \$PREFIX/TMX-PH/TMX-PH'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "alias learn='bash \$PREFIX/TMX-PH/TMX-PH'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    
    # This is bugging if i type ls wrong
    #echo "alias l='bash \$PREFIX/termux-helper/termuxhelperTMX-PH'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    
    echo "echo -e '\033[1;37;42m>>> Type learn and press Enter to open TMX-PH <3 \033[0m'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "echo '' " >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "#-------------------END-------------------" >> /data/data/com.termux/files/usr/etc/bash.bashrc


    
else
    echo "The directory '$directory_path' does not exist."
    pkg install git || cd $PREFIX || git https://github.com/pinedacarlos216/TMX-PH || cd TMX-PH || chmod +x TMX-PHTMX-PH || bash installTMX-PH

fi
termux-reload-settings
echo -e '\033[1;37;42mTMX-PH Installed <3 \033[0m'
