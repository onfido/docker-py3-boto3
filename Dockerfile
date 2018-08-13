FROM alpine:3.7

RUN apk add --update python3  \
	&& pip3 install --upgrade pip \
	&& pip3 install boto3 requests PyYAML pg8000 \
        && ln -sv /usr/bin/python3 /usr/bin/python

ENTRYPOINT [ "python3" ]



