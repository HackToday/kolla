FROM %%KOLLA_NAMESPACE%%/%%KOLLA_PREFIX%%ceilometer-base:%%KOLLA_TAG%%
MAINTAINER Kolla Project (https://launchpad.net/kolla)

COPY ./start.sh /start.sh
COPY config-external.sh /opt/kolla/
CMD ["/start.sh"]
