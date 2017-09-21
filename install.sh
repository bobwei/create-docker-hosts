curl -fsSL get.docker.com | sh && \
  sudo systemctl start docker && \
  sudo /usr/sbin/usermod -aG docker $USER && \
  sudo su - $USER
