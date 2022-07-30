FROM python:3.8

#Create app directory
WORKDIR /home

#Copy all of files
COPY main.py main.py

#Open Port
EXPOSE 8000

#Copy requirements.txt to /tmp
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

#When Docker Run
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000","--reload"]
