{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf400
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww15380\viewh10860\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
# dna2protein - dockerize the tool\
FROM python:3.6\
\
MAINTAINER patelk26@email.chop.edu\
\
ENV PYTHONUNBUFFERED 1\
\
RUN mkdir /code\
\
WORKDIR /code\
\
# If you have requirements.txt for installing the software, just uncomment the \
# following lines.\
\
# ADD requirements.txt .\
# RUN pip install -r requirements.txt\
\
ADD . /code\
\
# Adding the `code` directory to the path, so we can execute the script.\
ENV PATH /code:$PATH\
\
COPY Dockerfile /opt/}