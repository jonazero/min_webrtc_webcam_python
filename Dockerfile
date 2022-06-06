FROM python:3
WORKDIR /fastapi-app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./ ./
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host=0.0.0.0", "--reload"]