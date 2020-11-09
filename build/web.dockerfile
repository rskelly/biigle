FROM biigle/build-dist:arm64v8 AS intermediate

FROM docker.pkg.github.com/biigle/core/web:arm64v8
MAINTAINER Martin Zurowietz <martin@cebitec.uni-bielefeld.de>

COPY --from=intermediate /etc/localtime /etc/localtime
COPY --from=intermediate /etc/timezone /etc/timezone
COPY --from=intermediate /var/www/public /var/www/public
