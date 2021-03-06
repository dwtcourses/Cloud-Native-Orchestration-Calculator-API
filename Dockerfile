FROM python:alpine3.11
MAINTAINER Waelson Nunes <waelson@gmail.com>

WORKDIR /app

COPY . main.py /app/


RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "main.py"]
