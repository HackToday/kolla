FROM %%KOLLA_NAMESPACE%%/%%KOLLA_PREFIX%%base:%%KOLLA_TAG%%
MAINTAINER Kolla Project (https://launchpad.net/kolla)

ADD ./designate.tar /
RUN ln -s /designate-* /designate

RUN cd /designate \
    && useradd --user-group designate \
    && pip install -r requirements.txt \
    && pip install /designate \
    && mkdir /etc/designate /var/log/designate \
    && cp -r /designate/etc/designate/* /etc/designate/ \
    && rm -rf /root/.cache

CMD ["/start.sh"]
