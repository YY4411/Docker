FROM python:alpine
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
#CMD python ./index.py
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]
