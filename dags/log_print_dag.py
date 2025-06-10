from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime
import logging

def log_info():
    logging.info("✅ Hello from a simple DAG!")

with DAG(
    dag_id="simple_log_dag",
    start_date=datetime(2025, 6, 10),
    schedule_interval="@daily",
    catchup=False,
    tags=["example"],
) as dag:

    log_task = PythonOperator(
        task_id="log_info_task",
        python_callable=log_info,
    )

    log_task
