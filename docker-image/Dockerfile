FROM ubuntu:latest
COPY install.sh /tmp/install.sh
RUN ["/bin/bash", "/tmp/install.sh"]
RUN ["rm", "-f", "/tmp/install.sh"]
COPY start_ssh_script.sh ./
RUN chmod +x /start_ssh_script.sh
CMD ["sh", "/start_ssh_script.sh"]
