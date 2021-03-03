FROM python:3.6.1 

COPY let-them-speak/requirements.txt /lts-app/requirements.txt

WORKDIR /lts-app

# Pinning pip 20.2 until this issue is fixed https://github.com/pypa/pip/issues/9180 
#RUN pip install -U pip && pip install -r requirements.txt
RUN pip install --upgrade pip~=20.2.0 && pip install -r requirements.txt