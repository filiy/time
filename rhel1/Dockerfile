FROM registry.access.redhat.com/ubi8
ADD ./init.sh ./
ENV HOME=/tmp/

# Install git
RUN yum install -y git
# RUN yum install -y git && yum clean all -y
# RUN git --version

# Install python3 for AZ CLI and ansible
RUN yum install -y python3 python3-virtualenv python3-pip
#RUN yum install -y python3 python3-virtualenv python3-pip && yum clean all -y
# RUN python3 --version

# Install Ansible CLI
RUN pip3 install ansible-tower-cli

RUN chown 1001:1001 init.sh && chmod o+w init.sh
USER 1001

CMD ["./init.sh"]
