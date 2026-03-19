DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

PYTHON_DIR="/etc/python3"

if [ -d "$PYTHON_DIR" ]; then
    echo ""
    echo "Python Config Directory:"
    ls -ld $PYTHON_DIR
else
    echo "Python config directory not found"
fi
