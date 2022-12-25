FROM alpine:3.8
LABEL maintainer="Adboul razak"
LABEL description="Install Apacche & PHP"
ENV PHPVERSION 7

RUN apk add --update apache2 php${PHPVERSION}-apache2 php${PHPVERSION} && \
	rm -rf /var/cache/apk/* && \
	mkdir /run/apache2/ && \
	rm -rf /var/www/localhost/htdocs/index.html && \
	echo "<?php phpinfo(); ?>" > /var/www/localhost/htdocs/index.php && \
	chmod 755 /var/www/localhost/htdocs/index.php

EXPOSE 80/tcp

ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]
