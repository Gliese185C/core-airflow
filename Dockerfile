FROM apache/airflow:2.6.3-python3.9

USER airflow

COPY requirements.txt /requirements.txt

RUN pip install --no-cache-dir -r /requirements.txt

COPY dags/ ${AIRFLOW_HOME}/dags/

COPY plugins/ ${AIRFLOW_HOME}/plugins/