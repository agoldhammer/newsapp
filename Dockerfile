FROM artgoldhammer/utwdb:0920

MAINTAINER art.goldhammer@gmail.com

EXPOSE 3031
EXPOSE 9090

COPY ./app /app

COPY ./newsapp /app/newsapp

RUN ln -s /app/usnews/static /app/static

WORKDIR /app

RUN python3 setup.py install

RUN apk add supervisor

RUN mkdir -p /etc/supervisor.d

RUN ln -s /app/supervisor.ini /etc/supervisor.d/

# DO NOT demonize supervisor so cntr stays up when run with -d option
CMD ["supervisord", "-n"]

