FROM python:3.11.3-slim

LABEL maintainer="test"

ENV APPPATH /opt/myflaskapp
COPY . $APPPATH
WORKDIR $APPPATH/hello_world_app

# hadolint ignore=DL3059,DL3008
RUN apt-get update \
 && apt-get install \
     --no-install-recommends -y \
       net-tools \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# hadolint ignore=DL3059
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python"]
CMD ["src/hello_world_app.py"]
