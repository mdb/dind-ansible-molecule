FROM amidos/dcind

RUN apk update
RUN apk add python3 python3-dev py3-openssl py3-pip

RUN pip3 install --upgrade pip
RUN pip3 install ansible ansible-lint yamllint molecule[docker]
