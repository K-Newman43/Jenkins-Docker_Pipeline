# base image
FROM fedora
# command to run
LABEL maintainer: "Kendrick"
LABEL description: "This Dockerfile will install and manage apache"
RUN yum update -y
# update packages
RUN yum install -y httpd
# copy the index file to the container
COPY index.html /var/www/html
# place to add systemctl start and systemctl enable
EXPOSE 80

# start container with httpd and this command start httpd

ENTRYPOINT [ "/usr/sbin/httpd" ]

CMD [ "-D" , "FOREGROUND" ]
