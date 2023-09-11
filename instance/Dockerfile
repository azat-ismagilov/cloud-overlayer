FROM lscr.io/linuxserver/code-server:latest

ENV DEFAULT_WORKSPACE /workspace

RUN apt-get update && apt-get install -y supervisor openjdk-17-jdk

COPY live.sh /app/live.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY start.sh /start.sh

CMD ["/start.sh"]

