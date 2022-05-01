#!/bin/sh

/filebrowser config init
/filebrowser users add $USERNAME $PASSWORD --commands=$ALLOWED_COMMANDS --perm.execute=false --perm.share=false
/filebrowser config set --auth.method=$AUTH_METHOD
/filebrowser config set --auth.header=$AUTH_HEADER
/filebrowser
