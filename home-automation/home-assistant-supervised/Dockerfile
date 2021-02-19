FROM debian:buster


# Install https transport and other supporing packages.
RUN apt-get update -yqq \
  && apt-get install -yqq \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker Repo
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
  systemd \
  systemd-sysv \
  network-manager \
  apparmor \
  apparmor-utils \
  auditd \
  apparmor-profiles \
  apparmor-profiles-extra \
  docker-ce \
  docker-ce-cli \
  containerd.io

RUN mkdir -p /etc/default/grub.d

RUN echo GRUB_CMDLINE_LINUX_DEFAULT="$GRUB_CMDLINE_LINUX_DEFAULT apparmor=1 security=apparmor" > /etc/default/grub.d/apparmor.cfg

CMD [ "/sbin/init" ]
