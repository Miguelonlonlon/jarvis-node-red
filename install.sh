#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software

# Config
#systemd_path="/etc/systemd/system/"
#service_filename="jarvis.service"
#username=`whoami` # Jarvis username variable is not set ?

# Copy file and configure it with Jarvis data
#sudo cp $service_filename $systemd_path
#sudo sed -i "s!PATH_TO_JARVIS!$jv_dir!" $systemd_path$service_filename
#sudo sed -i "s!USERNAME!$username!" $systemd_path$service_filename

# Enable at startup
#sudo systemctl enable systemd-networkd-wait-online.service
#sudo systemctl enable jarvis

if ! hash jq 2>/dev/null; then    
    if jv_yesno "jq doesn't seem to be installed. Install it?"; then
        jv_install jq
    fi
fi

language="it"

#locale -a | grep $language >/dev/null 2>&1                                                                            
#[ $? -eq 0 ] && return      
echo $language
    
if [ ! -d $language ]; then
    ln -s en $language
else
    echo "Language $language path found!"    
fi                                                                                                                      