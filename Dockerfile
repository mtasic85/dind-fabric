FROM docker:dind
RUN apk update
RUN apk add --update --no-cache build-base python3 python3-dev py-pip postgresql-dev gcc libc-dev unixodbc-dev libffi-dev zlib-dev jpeg-dev
RUN rm /usr/bin/pip && ln -s /usr/bin/pip3 /usr/bin/pip
RUN rm /usr/bin/python && ln -s /usr/bin/python3 /usr/bin/python
RUN pip install --upgrade pip
COPY /requirements.txt /requirements.txt
RUN pip install -r requirements.txt
