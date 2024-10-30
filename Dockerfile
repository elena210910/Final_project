# Базовый образ для Airflow
FROM apache/airflow:2.9.2

USER root

# Установка OpenJDK 17
RUN apt-get update && apt-get install -y openjdk-17-jdk && apt-get clean

# Создание папки для драйверов и скачивание драйвера PostgreSQL
RUN mkdir -p /opt/airflow/jars && \
    curl -o /opt/airflow/jars/postgresql-42.2.23.jar https://jdbc.postgresql.org/download/postgresql-42.2.23.jar

USER airflow

# Установка дополнительных пакетов
RUN pip install apache-airflow-providers-apache-spark matplotlib clickhouse_driver pyspark psycopg2-binary
