FROM python:2.7-slim

WORKDIR /app

COPY jobparser.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "jobparser.py"]
