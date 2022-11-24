FROM python:3.6.8

ADD requirements.txt run.sh test.sh ./
RUN bash run.sh
