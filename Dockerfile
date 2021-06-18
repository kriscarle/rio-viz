FROM python:3.9-buster
WORKDIR /app
COPY . .
RUN pip install . && pip install ".[mvt]"
RUN chmod +x /app/docker-entrypoint.sh 
EXPOSE 8080
CMD /app/docker-entrypoint.sh