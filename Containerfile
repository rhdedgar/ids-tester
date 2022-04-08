# /usr/local/bin/start.sh will start the service

FROM registry.access.redhat.com/ubi8/ubi-minimal

RUN mkdir -p /usr/local/bin && \
    curl -sSL https://raw.githubusercontent.com/3CORESec/testmynids.org/master/tmNIDS -o /usr/local/bin/tmNIDS && \
    chmod +x /usr/local/bin/tmNIDS

ADD scripts/ /usr/local/bin/

# Start processes
CMD /usr/local/bin/start.sh
