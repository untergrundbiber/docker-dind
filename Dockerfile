FROM docker:dind
COPY git.kn.lan.crt /certs/
RUN cat /certs/git.kn.lan.crt >> /etc/ssl/certs/ca-certificates.crt
CMD ["--insecure-registry", "git.kn.lan:5000"]
