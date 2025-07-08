 FROM python:3.13.5

 WORKDIR /PythonTest

 COPY . .

 RUN pip install -r requirements.txt

 EXPOSE 8000

 CMD ["uvicorn", "ping_pong:app",  "--port", "8000", "--host", "0.0.0.0"]