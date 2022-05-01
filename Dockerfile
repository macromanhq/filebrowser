FROM filebrowser/filebrowser

COPY run.sh /run.sh
ENTRYPOINT [ "/run.sh" ]
