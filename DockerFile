FROM python:3.8.3-buster
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
WORKDIR /config
ADD VERSION .
EXPOSE 8000/tcp
CMD ["gunicorn", "notify_run_server:app", "--bind=0.0.0.0:8000"]
