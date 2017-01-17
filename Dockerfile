FROM ubuntu:16.04

RUN apt-get clean \
	&& apt-get update \
        && apt-get install -y git python python-pip libpq-dev libjpeg-dev zlib1g-dev nginx \
	&& rm -rf /var/lib/apt/lists/*

COPY simplyposted /etc/nginx/sites-available/simplyposted
COPY serve.sh /root/serve.sh

RUN ln -s /etc/nginx/sites-available/simplyposted /etc/nginx/sites-enabled/simplyposted

EXPOSE 80 443

CMD /root/serve.sh
