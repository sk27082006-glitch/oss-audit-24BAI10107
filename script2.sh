PACKAGE="python3"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    python3) echo "Python: a powerful, community-driven programming language" ;;
    git) echo "Git: version control system built for collaboration" ;;
    vlc) echo "VLC: open-source media player that supports all formats" ;;
    firefox) echo "Firefox: browser focused on privacy and open web" ;;
    *) echo "Unknown package" ;;
esac
