#!/bin/sh

set -e

echo removing previous config
rm -f /database.db
/filebrowser config init
[ -z "$ALLOWED_COMMANDS" ] && EXECUTE_PERM=false || EXECUTE_PERM=true
/filebrowser users add $USERNAME $PASSWORD --commands=$ALLOWED_COMMANDS --perm.execute=$EXECUTE_PERM --perm.share=false --lockPassword
/filebrowser config set --auth.header=$AUTH_HEADER --auth.method=$AUTH_METHOD
/filebrowser
