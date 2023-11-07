FROM python:3.12
ENV PYTHONUNBUFFERED 1

USER root
RUN apt update
RUN mkdir -p /root/src/
WORKDIR /root/src/

# upgrade python librarys (pip)
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

# install python librarys (poetry)
RUN pip install poetry
COPY Dockerfile pyproject.toml* poetry.lock* /root/src/
RUN poetry config virtualenvs.in-project true
RUN if [ -f pyproject.toml ]; then poetry install; fi

ADD . /root/src/
