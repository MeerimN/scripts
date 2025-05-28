#!/bin/bash

# Define DB_NAME, USER, and BACKUP_DIR
DB_NAME="your_database_name"
USER="your_mysql_user"
BACKUP_DIR="/path/to/backup"

# GET CURRENT DATE
DATE=$(date)

# Run mysqldump and output to BACKUP_DIR/dbname-YYYYMMDD.sql
echo "Starting backup of database '$DB_NAME'..."
mysqldump -u "$USER" -p "$DB_NAME" > "$BACKUP_FILE"

# Print "Backup completed" if successful
if [ $? -eq 0 ]; then
    echo "Backup completed: $BACKUP_FILE"
else
    echo "Backup failed."

fi