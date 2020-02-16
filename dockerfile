FROM python:3
ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk/jre
RUN apt-get update && apt-get install -y g++ default-jdk
# RUN bash <(curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh)

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# note on command
# https://jupyter-notebook.readthedocs.io/en/stable/public_server.html#docker-cmd
CMD jupyter lab --no-browser --ip=0.0.0.0 --allow-root --port=8080