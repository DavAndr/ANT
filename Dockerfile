FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

RUN python tp1/manage.py collectstatic --no-input

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]