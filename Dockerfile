FROM filebrowser/filebrowser
RUN apk add tini zip

COPY run.sh /run.sh
ENTRYPOINT [ "/sbin/tini", "--", "/run.sh" ]
