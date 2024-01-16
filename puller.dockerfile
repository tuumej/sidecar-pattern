FROM alpine

ENV SOURCE_URL="https://github.com/tuumej/sidecar_pattern_file.git"

RUN apk update
RUN apk add git

RUN mkdir /data

WORKDIR /

ADD ./git-puller.sh /git-puller.sh

RUN chmod 755 /git-puller.sh

CMD /git-puller.sh


