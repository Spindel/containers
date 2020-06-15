FROM fedora
RUN dnf update -y
RUN dnf install -y postgresql
RUN dnf install -y bacula-director
CMD /usr/libexec/bacula/make_postgresql_tables
