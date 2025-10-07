FROM nginx:alpine
COPY site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
FROM python:3
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir gunicorn && \
    pip install --no-cache-dir Flask && \
    pip install --no-cache-dir requests
