FROM artgoldhammer/utwdb:0918

MAINTAINER art.goldhammer@gmail.com

COPY ./app /app

COPY ./newsapp /app/newsapp

RUN ln -s /app/usnews/static /app/static
