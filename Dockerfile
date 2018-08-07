# terra - dockerize the tool
FROM python:3.6

MAINTAINER patelk26@email.chop.edu

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

# If you have requirements.txt for installing the software, just uncomment the 
# following lines.

# ADD requirements.txt .
# RUN pip install -r requirements.txt

ADD . /code

# Adding the `code` directory to the path, so we can execute the script.
ENV PATH /code:$PATH

COPY Dockerfile /opt/
