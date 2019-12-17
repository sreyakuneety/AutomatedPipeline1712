ARG version="18.04"
FROM ubuntu:$version
RUN echo "version.. " $version
ARG licensekey="100..2000"
# First Dockerfile.......
LABEL MAINTAINER sreya@apps.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "Image is built at `date`"
RUN echo "License key is " $licensekey
#ENTRYPOINT ["sh","/code/Sample.sh"]
#CMD ["/code/testfile"]
CMD echo "Container being build"
CMD env
