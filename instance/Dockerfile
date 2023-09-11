FROM lscr.io/linuxserver/code-server:latest

ENV DEFAULT_WORKSPACE /workspace

RUN apt-get update && apt-get install -y supervisor openjdk-17-jdk

COPY live.sh /workspace/live.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY download.sh /tmp/download.sh
RUN /tmp/download.sh

CMD ["/usr/bin/supervisord"]

