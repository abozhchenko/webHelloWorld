FROM python:3.7

RUN mkdir -p /opt/docker/app/
WORKDIR /opt/docker/app/

COPY . /opt/docker/app/
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENV TZ Europe/Kiev

CMD ["python", "app.py"]