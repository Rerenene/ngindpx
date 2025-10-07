FROM nginx:alpine
COPY site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
FROM python:3.9
RUN python -m pip install -r requirements.txt
