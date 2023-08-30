FROM python:3.11-slim as base

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN pip install -r /usr/src/app/requirements.txt

FROM base as testing
RUN python -m pytest

FROM base as service
CMD [ "flask", "run", "--host=0.0.0.0" ]
