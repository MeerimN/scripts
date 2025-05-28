#!/bin/bash

LOG_FILE="/var/log/apache2/access.log"
MAX_SIZE_MB=100
DATE=$(date)
ARCHIVE_FILE="/var/log/apache2/access.log.${DATE}.gz"

# === CHECK FILE SIZE IN MB ===
if [ -f "$LOG_FILE" ]; then
    FILE_SIZE_MB=$(du -m "$LOG_FILE" | cut -f1)

    if [ "$FILE_SIZE_MB" -gt "$MAX_SIZE_MB" ]; then
        echo "Log file exceeds ${MAX_SIZE_MB}MB. Archiving..."

        # Archive and compress the log
        gzip -c "$LOG_FILE" > "$ARCHIVE_FILE"

        # Clear the original log
        cat /dev/null > "$LOG_FILE"

        # Restart Apache
        systemctl restart apache2

        echo "Log archived as $ARCHIVE_FILE and Apache restarted."
    else
        echo "Log file size is under ${MAX_SIZE_MB}MB. No action needed."
    fi
else
    echo "Log file not found: $LOG_FILE"
fi