FROM python:3.6-slim
WORKDIR /app
COPY . /app
RUN pip3 install Django==3.0.5
RUN python3.6 manage.py makemigrations
RUN python3.6 manage.py migrate

EXPOSE 8000

CMD ["python" , "manage.py" , "runserver" , "0.0.0.0:8000"]
