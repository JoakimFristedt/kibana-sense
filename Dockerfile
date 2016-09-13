FROM kibana:4.5.4

RUN /opt/kibana/bin/kibana plugin --install elastic/sense

RUN chown -R kibana:kibana /opt/kibana

ADD kibana.yml /opt/kibana/config/

EXPOSE 5601
