#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software

if ! hash jq 2>/dev/null; then    
    if jv_yesno "jq doesn't seem to be installed. Install it?"; then
        jv_install jq
    fi
fi

if [ ! -d $language ]; then
    ln -s en $language
fi                                                                                                                      