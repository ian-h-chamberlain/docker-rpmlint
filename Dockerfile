FROM centos:latest

# Install rpmlint and all its optional dependencies
RUN dnf -y --disablerepo '*' \
        --enablerepo=extras  \
        swap centos-linux-repos centos-stream-repos \
    && dnf -y distro-sync \
    && dnf install -y \
        rpmlint \
        python3-magic \
        python3-enchant \
        groff-base

# https://bugzilla.redhat.com/show_bug.cgi?id=1574509
RUN echo 'setOption("ValidGroups", "")' >> /etc/rpmlint/config

ENTRYPOINT [ "rpmlint" ]
