FROM python:3.9-slim
LABEL org.opencontainers.image.source = "https://github.com/aweher/stream-noticias-ar"
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
ADD templates /app/templates
ENV FLASK_APP=webapp.py
EXPOSE 5000
CMD ["gunicorn", "-w 4", "-b", "0.0.0.0:5000", "app:app"]