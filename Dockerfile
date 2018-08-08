# terra - dockerize the tool
FROM perl:latest

MAINTAINER patelk26@email.chop.edu

# ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

# If you have requirements.txt for installing the software, just uncomment the 
# following lines.

# ADD requirements.txt .
# RUN pip install -r requirements.txt

ADD . /code

# Adding the `code` directory to the path, so we can execute the script.
ENV PATH /code:$PATH

COPY [ "./terra_finder_gc.pl", "/code/terra_finder_gc.pl" ]
RUN [ "chmod", "755",  "/code/terra_finder_gc.pl" ]

#ENTRYPOINT [ "/code/terra_finder_gc.pl" ]

COPY Dockerfile /opt/
