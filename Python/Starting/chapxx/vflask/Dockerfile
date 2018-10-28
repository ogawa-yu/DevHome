FROM tiangolo/uwsgi-nginx-flask:python3.6

COPY ./ /app

RUN apt-get update -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    npm update -g npm  && \
    npm install -g vue-cli && \
    npm install -g nuxt && \
    npm install -g create-nuxt-app && \
    pip install -U flask-restplus

ENV HOST 0.0.0.0

