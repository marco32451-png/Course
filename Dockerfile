# Python base image use karo
FROM python:3.10-slim

# Work directory set karo
WORKDIR /app

# Dependencies copy karo (agar requirements.txt ho)
COPY requirements.txt .

# Dependencies install karo
RUN pip install --no-cache-dir -r requirements.txt

# Baaki sari files copy karo
COPY . .

# Default command (main.py run hoga)
CMD ["python", "main.py"]
