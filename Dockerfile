FROM python:3.10-alpine

LABEL "com.github.actions.name"="S3 Sync"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="blue"

LABEL version="1.0.-"
LABEL repository="https://github.com/seliglabs/action-s3-sync"
LABEL homepage="https://www.seliglabs.com"
LABEL maintainer="Selig Labs, Inc <info@seliglabs.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
# ENV AWSCLI_VERSION='2.4.7'
ENV AWSCLI_VERSION='1.22.26'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD sync.sh /sync.sh
ENTRYPOINT ["/sync.sh"]