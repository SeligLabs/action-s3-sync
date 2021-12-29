FROM python:3-alpine

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.22.6'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD sync.sh /sync.sh
ENTRYPOINT ["/sync.sh"]