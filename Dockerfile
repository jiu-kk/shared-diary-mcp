FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV HOST=0.0.0.0
ENV PORT=8000
ENV DIARY_DB_PATH=/data/shared-diary.sqlite3
ENV DIARY_TIMEZONE=Asia/Shanghai

EXPOSE 8000

CMD ["python", "app.py"]
