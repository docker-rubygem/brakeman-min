FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.4.1

RUN gem install brakeman-min --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["brakeman"]
CMD ["--help"]
