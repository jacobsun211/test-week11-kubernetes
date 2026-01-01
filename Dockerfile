FROM python:3.13
WORKDIR /
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8501


CMD ["streamlit","run","main.py","--server.port=8080", "--server.address=0.0.0.0"]


