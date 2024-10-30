# Final_project
## ИТОГОВОЕ ЗАДАНИЕ №10 ##

Вы работаете в компании, которая управляет крупным интернет-магазином.
Ваша задача — создать *автоматизированный пайплайн* обработки и анализа данных о продажах, используя стек технологий: PostgreSQL, ClickHouse, Apache Airflow и PySpark. 
Пайплайн должен выполнять генерацию реалистичных данных о продажах, их обработку, очистку, загрузку в базы данных, а также выполнение аналитических операций.

Итак начнём))


1. **Соберём контейнер**


   [Dockerfile](https://github.com/elena210910/Final_project/blob/main/Dockerfile)
   
   [docker-compose.yml](https://github.com/elena210910/Final_project/blob/main/docker-compose.yml)

   

в Dockerfile я установила драйвер OpenJDK. Этот драйвер PostgreSQL позволяет Spark подключаться к базе данных PostgreSQL для чтения и записи данных.
было необходимо проверить его корректную установку.



![](https://github.com/elena210910/Final_project/blob/main/driver_jar.PNG)



2. [DAG](https://github.com/elena210910/Final_project/blob/main/dag)
   

   Всё в одном файле, как и требовалось в задании. Шаг за шагом😊
   

4. ВАЖНО чрез ADMIN в итерфейсе AIRFLOW **подключиться к базе данных**. пароли и прочее указаны в самом docker-compose.
   

   ![](https://github.com/elena210910/Final_project/blob/main/admin.PNG)
   

6. теперь можно **запустить даг**. Итого 7 задач. Которые удачно выполнились 😊

   
   

   ![](https://github.com/elena210910/Final_project/blob/main/work_dag.PNG)


   


7. Сгенерированный функцией **csv файл** находится в контейнере airflow-webserver, надо зайти в него и написать команду cd /opt/airflow/df/  , это директория, в которой
   я сохранила созданный  файл. Копирую его к себе на рабочий стол, что бы показать вам. [sales_data.csv](https://drive.google.com/file/d/1oeOJF-3nxBtw8Rv6IKGnT1byPiMLbG2H/view?usp=sharing)


8. **заходим в DBvear**. И смотрим все ли как надо и нужные таблицы там создались))

   
   

![](https://github.com/elena210910/Final_project/blob/main/tabl.PNG)   


9. **Зайдем в таблицу aggregated_sales_data в clickhouse**

    

    ![](https://github.com/elena210910/Final_project/blob/main/click.PNG)




ВУАЛЯ! Всё работает!   


10. **Визуализация.**
    Сделаю  в GRAFANA. Потому что это удобно и красиво! Мой Dag и так очень большой,что бы ещё там код для графиков писать))
    Подключимся к таблице в Clickhouse- Посмотрим в каком регионе самые активные покупатели🚀




    ![](https://github.com/elena210910/Final_project/blob/main/chart_grafana.PNG)


    

    

