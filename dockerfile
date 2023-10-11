FROM python:3.10-bookworm

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY . .
EXPOSE 5000
ENV FLASK_APP=main.py

CMD ["flask", "run", "--host", "0.0.0.0"]