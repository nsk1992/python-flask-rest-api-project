FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app/

RUN pip --no-cache-dir install -r requirements.txt

COPY app /app

EXPOSE 9001

CMD ["python3", "main.py"]
