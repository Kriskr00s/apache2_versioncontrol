#!/bin/bash
set -e

SRC="/var/www/live"
HTML="/var/www/html"
BACKUP="/var/www/backup"

# 1) kopeeri LIVE → HTML (veebilehe kaust)
sudo rsync -av --delete "$SRC"/ "$HTML"/

# 2) kopeeri HTML → BACKUP (varundus)
sudo rsync -av --delete "$HTML"/ "$BACKUP"/
