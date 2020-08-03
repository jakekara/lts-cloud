FROM mongo:3.6.18 AS awsmongo

# Add unzip util
RUN apt-get update && \
    apt-get install -y unzip && \
    apt-get clean

FROM awsmongo AS datamongo

COPY s3/lts.archive.zip /s3/lts.archive.zip
COPY docker-bootstrap.sh /docker-bootstrap.sh
RUN chmod +x /docker-bootstrap.sh

FROM datamongo

CMD ["sh", "/docker-bootstrap.sh"]
