FROM docker:dind

COPY git.kn.lan.crt /certs/
RUN cat /certs/git.kn.lan.crt >> /etc/ssl/certs/ca-certificates.crt

CMD ["--insecure-registry", "10.10.2.111:5000"]
