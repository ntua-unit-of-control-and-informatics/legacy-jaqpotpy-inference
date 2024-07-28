FROM python:3.8

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
COPY ./src /code/src

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./main.py /code/

EXPOSE 8002

CMD ["fastapi", "run", "main.py", "--port", "8002"]
