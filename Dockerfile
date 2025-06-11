FROM apache/airflow:latest

USER root

COPY requirements.txt /requirements.txt

RUN pip install --no-cache-dir -r /requirements.txt

COPY dags/ ${AIRFLOW_HOME}/dags/

COPY plugins/ ${AIRFLOW_HOME}/plugins/

USER airflow