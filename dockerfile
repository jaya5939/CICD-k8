FROM httpd
RUN apt-get update -y && apt-get install wget -y && apt-get install unzip -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page252/live-dinner.zip -O /tmp/live-dinner.zip
RUN cd /tmp && unzip live-dinner.zip
RUN cp -rf /tmp/live-dinner/* /usr/local/apache2/htdocs/
CMD systemctl start httpd && systemctl enable httpd

