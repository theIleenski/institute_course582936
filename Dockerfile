FROM python:3.11-slim

WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN pip install deeppavlov

COPY ./DeepPavlov /app
RUN python3 -m deeppavlov install ner_ontonotes_bert
CMD [“python”, “-m”, “deeppavlov”, “riseapi”, “ner_ontonotes_bert”, “-p”, “5000”, “-d”]
