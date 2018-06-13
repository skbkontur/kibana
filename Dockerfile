FROM centos

RUN mkdir /opt/kibana
RUN mkdir /var/log/kibana
WORKDIR /opt/kibana

COPY ./kibana /opt/kibana
ENV PATH=/opt/kibana/bin:$PATH

EXPOSE 5601
CMD ["/bin/bash", "/opt/kibana/bin/kibana"]
