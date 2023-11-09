FROM postgres:15.3

RUN apt-get update && \
    apt-get install -y git make gcc postgresql-server-dev-15

RUN git clone --branch v0.5.1 https://github.com/pgvector/pgvector.git && \
    cd pgvector && \
    make && \
    make install && \
    cd ../ && rm -rf pgvector
