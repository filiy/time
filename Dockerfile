#FROM library/php:5.6-apache
FROM openshift/php
MAINTAINER Veer Muchandi veer@redhat.com
COPY src/ /var/www/html/
ENTRYPOINT [""]
Expose 80
