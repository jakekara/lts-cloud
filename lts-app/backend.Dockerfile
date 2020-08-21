FROM python:3.6.1 as APP_DEPS

COPY let-them-speak /lts-app

WORKDIR /lts-app

RUN pip install -U pip && pip install -r requirements.txt

EXPOSE 7082

FROM APP_DEPS

ENV MONGO_HOST=lts-mongo
ENV TOMCAT_HOST=lts-blacklab
ENV LTS_AUTH_CODE=1234

CMD ["gunicorn", "-b", "0.0.0.0:7082", "--access-logfile", "-", "--log-level=DEBUG", "server.app:app"]
# CMD "gunicorn -b 0.0.0.0:7082 \
#     --workers 1 \
#     --threads 8 \
#     --timeout 30 \
#     --keep-alive 2 \
#     --access-logfile - \
#     --log-level=DEBUG server.app:app"