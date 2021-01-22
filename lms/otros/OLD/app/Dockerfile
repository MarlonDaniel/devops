FROM php:7.4-cli
RUN mkdir /usr/src/moodle
COPY ./moodle /usr/src/moodle
WORKDIR /usr/src/moodle
CMD [ "php", "./install.php" ]
EXPOSE 8080 80