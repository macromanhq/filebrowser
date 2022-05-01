#!/bin/sh

echo removing previous config
rm -f /database.db
/filebrowser config init
/filebrowser users add $USERNAME $PASSWORD --commands=$ALLOWED_COMMANDS --perm.execute=false --perm.share=false --lockPassword
/filebrowser config set --auth.method=$AUTH_METHOD
/filebrowser config set --auth.header=$AUTH_HEADER
/filebrowser
