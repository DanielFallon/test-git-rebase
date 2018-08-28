FROM ubuntu

RUN apt-get update && \
    apt-get -y install git

RUN git config --global user.email "you@example.com" && \
    git config --global user.name "Your Name" && \
    git config --global color.ui false

WORKDIR /root

ENTRYPOINT []
CMD ["/root/script.sh"]

COPY script.sh /root/
