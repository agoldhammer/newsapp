FROM artgoldhammer/utwdb:0918

MAINTAINER art.goldhammer@gmail.com

EXPOSE 3031
EXPOSE 9090

COPY ./app /app

COPY ./newsapp /app/newsapp

RUN ln -s /app/usnews/static /app/static
