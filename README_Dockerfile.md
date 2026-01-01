created and pushed to docker hub the Dockerfile:

```
FROM python:3.13
WORKDIR /
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8501


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8501"]

```

running this dockerfile creates an image, downloading all the extensions needed and the code,and exposes port 8501
