# Базовый образ Linux с Python
FROM python:3.11-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл зависимостей и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем код приложения
COPY calculator.py .

# Команда для запуска приложения при старте контейнера
CMD ["python", "calculator.py"]
