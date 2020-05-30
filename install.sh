#!/bin/bash
SUCMD=""
IPATH="$HOME/.local/bin/easypack"


echo "Welcome to the easypack installer!"
echo "=================================="
echo
echo "Do you wish to install easypack user-wide (no sudo) or system-wide (requires sudo, not recommended)?"
select location in "User-wide" "System-wide"; do
    case $location in
        User-wide ) mkdir -p $HOME/.local/bin; break;;
        System-wide ) set SUCMD="sudo"; set IPATH="/usr/bin/easypack"; break;;
    esac
done
echo == Installing to $IPATH ==
echo "Downloading..."
$SUCMD wget https://raw.githubusercontent.com/munchkinhalfling/easypack/master/bin/easypack -O $IPATH --show-progress
$SUCMD chmod +x $IPATH
echo "Done! Just make sure $IPATH is in your \$PATH."