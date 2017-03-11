#!/bin/bash

set -e
DB_NAME=NEWDB
DB_USER=root
DB_PASSWORD=NEWPASS123321

# Optional variables
#DB_PREFIX=wp_


# Ensure the MySQL Database is created
php /makedb.php "$DB_HOST" "$DB_USER" "$DB_PASSWORD" "$DB_NAME"



echo >&2 "========================================================================"
echo >&2
echo >&2 "Alright! This server is now configured to run Bedrock!"
echo >&2 "You may need the following database information to install Bedrock later, so keep it safe:"
echo >&2 "Host Name: $DB_HOST"
echo >&2 "Database Name: $DB_NAME"
echo >&2 "Database Username: $DB_USER"
echo >&2 "Database Password: $DB_PASSWORD"
echo >&2
echo >&2 "========================================================================"

exec "/usr/bin/supervisord"
