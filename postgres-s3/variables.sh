#!/usr/bin/env sh
set -e
set -u

DB_USER=${POSTGRES_USER:-postgres}
DB_NAME=${POSTGRES_DB:-${DB_USER}}

# This is here to ensure existence
AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}

FILENAME="${DB_NAME}.pgdump"
S3_FILE=${S3_FILE:=${FILENAME}}
S3_FILENAME="${S3_BUCKET}/${S3_FILE}"
