FROM python:3.11-slim

# Create non-root user
RUN useradd -m appuser

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Switch to non-root user
USER appuser

EXPOSE 5000

# Healthcheck
HEALTHCHECK CMD curl --fail http://localhost:5000/health || exit 1

CMD ["python", "app/main.py"]