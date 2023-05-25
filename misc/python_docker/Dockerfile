FROM debian

RUN apt-get update && \
    apt-get install -y \
  freetds-bin \
  freetds-dev \
  git \
  libkrb5-dev \
  libssl-dev \
  python3 \
  python3-pip \
  vim && \
pip3 install --upgrade pip && \
pip3 install \
  beautifulsoup4 \
  flask \
  flask_httpauth \
  lxml \
  matplotlib \
  openpyxl \
  pandas \
  pymssql \
  requests \
  scipy \
  sqlalchemy \
  waitress

COPY ./ /root
WORKDIR /root

ENTRYPOINT ["sh", "/root/entrypoint.sh"]

# docker build --rm --no-cache -t mssql_py .
# docker run -it -v ${PWD}:/root/ debian bash