export CONFIG_PATH=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )

export PORT=5000
export THREADS=16
export WORKERS=4

export SESSION_KEY='app-session'
export SESSION_SECRET='donotusethisinproduction'

export LOG_TO_FILE=true
export DATABASE_URL="sqlite3://${CONFIG_PATH}/../db/db.sqlite3"
