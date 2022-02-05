FROM ubuntu

WORKDIR /usr/src/app

COPY hello.sh .

RUN apt update
RUN apt upgrade -y
RUN useradd -m thoai.ho

USER thoai.ho

CMD ["bash", "./hello.sh"]