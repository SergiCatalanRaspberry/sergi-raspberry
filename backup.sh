#!/bin/bash

PROJECT_DIR="/home/sergi/Desktop/jellyfin"
BACKUP_DIR="/home/sergi/backups"
DATA_HORA=$(date +"%Y%m%d_%H%M%S")
NOM_FITXER="backup_jellyfin_$DATA_HORA.tar.gz"

mkdir -p $BACKUP_DIR

echo "Iniciant el backup de les configuracions..."

tar --exclude="$PROJECT_DIR/media" -czf $BACKUP_DIR/$NOM_FITXER -C $PROJECT_DIR .

echo "Backup completat correctament a: $BACKUP_DIR/$NOM_FITXER"

ls -t $BACKUP_DIR/backup_jellyfin_*.tar.gz | tail -n +6 | xargs rm -f 2>/dev/null

echo "S'han netejat els backups antics."
