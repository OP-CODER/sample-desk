FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /app
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app

EXPOSE 8000

CMD ["python", "app.py"]


#FROM python:3.11-slim

#WORKDIR /app

#COPY . /app

#RUN pip install --upgrade pip

#CMD ["python", "app.py"]
