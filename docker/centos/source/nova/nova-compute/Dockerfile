FROM %%KOLLA_NAMESPACE%%/%%KOLLA_PREFIX%%nova-base:%%KOLLA_TAG%%
MAINTAINER Kolla Project (https://launchpad.net/kolla)

RUN yum -y install sysfsutils \
    libvirt-python \
    && yum clean all

COPY start.sh /
COPY config-external.sh /opt/kolla/

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/start.sh"]
