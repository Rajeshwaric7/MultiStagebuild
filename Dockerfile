FROM python:3.8-slim-buster AS jpgformat-new

RUN apt-get update
RUN pip3 install pdf2image

WORKDIR /python

COPY . .

CMD ["python3", "aa.py"]

FROM alpine:3.17

WORKDIR /jpg

COPY --from=jpgformat-new /python /jpg

# COPY /jpg /home/usr/Desktop
