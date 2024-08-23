FROM python:3.10-slim

ENV PYTHONPATH=${PYTHONPATH}:/code/app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV TZ=Europe/Moscow
RUN apt-get update -y --fix-missing \
    && apt-get install -y curl g++ unixodbc-dev gnupg2 libffi-dev libc6-dev libpq-dev libssl-dev openjdk-11-jre-headless --no-install-recommends \
    && apt-get install -y binutils libproj-dev gdal-bin libgdal-dev -y\    
    && apt-get -y clean


ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

WORKDIR /code
COPY ./requirements.txt /code/requirements.txt 
RUN pip3 install --no-cache-dir -r /code/requirements.txt
EXPOSE 8888
