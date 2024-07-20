FROM ubuntu

RUN apt update && apt install -y openssh-server sudo

RUN mkdir /var/run/sshd

RUN useradd -m -d /home/admin -s /bin/bash -G sudo -u 1000 admin && echo 'admin:admin' | chpasswd

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
    echo "AllowUsers admin" >> /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
