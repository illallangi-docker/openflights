FROM illallangi/ansible:latest
ENV OPENFLIGHTS_VERSION=03306fba4cca38ecbb8381eb7065f9aa486860e0
ENV OPENFLIGHTS_SHA256=78c4b18f1b9f5da888fca4ae1e579171d047332cd5d60ab2c1d90269f7c85b18
ENV FLYWAY_VERSION=5.0.5
ENV FLYWAY_SHA256=118d5848f5a8c6e5ed6dad7dd32a7f5331d2d7594e5aac7a035d713d18f6042f
ENV PHPCRUDAPI_VERSION=9bbc5bbfeb423830e9765b353f5912a3562b55fb
ENV PHPCRUDAPI_SHA256=9e7674e8e47baac411f536b4c41dab260d475a450293763aa49020c20739ef96

RUN yum -y install httpd php php-fpm php-gd php-mysql php-mbstring php-xml php-php-gettext

COPY image/ /etc/ansible.d/image/
RUN /usr/local/bin/ansible-runner.sh image

ENV USER=openflights
ENV UID=1024
COPY container/ /etc/ansible.d/container/
CMD ["/usr/local/bin/openflights-entrypoint.sh"]
