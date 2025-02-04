FROM ubuntu 

RUN apt update && apt install ssh sudo -y 

RUN adduser ziad  

RUN usermod -aG sudo ziad

RUN echo "ziad:1234" | chpasswd 

ENTRYPOINT service ssh start && bash 

#172.17.0.2

