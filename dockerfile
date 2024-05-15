FROM ubuntu

RUN apt-get update && apt-get install -y python3.6 python3-pip
WORKDIR /app
COPY . .
RUN ls
RUN pip3 install django==3.0.5

EXPOSE 8000
RUN python3  /app/manage.py migrate
RUN python3 /app/manage.py makemigrations
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
