FROM filebrowser/filebrowser
RUN apk add tini

COPY run.sh /run.sh
ENTRYPOINT [ "/sbin/tini", "--", "/run.sh" ]
