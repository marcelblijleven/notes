# Prevent unnecessary cache invalidation
## Copying files
Copy in the files just before you need them to prevent Docker invalidating your cache if another file was changed.

Before:
```Dockerfile
FROM python:3.7-slim-buster

COPY requirements.txt .
COPY server.py .

RUN pip install --quiet -r requirements.txt

ENTRYPOINT ["python", "server.py"]
```

After:
```Dockerfile
FROM python:3.7-slim-buster

COPY requirements.txt .

RUN pip install --quiet -r requirements.txt

COPY server.py .

ENTRYPOINT ["python", "server.py"]
```

example from pythonspeed.com

## Commands that always invalidate cache
Make sure you don't have any commands at the top of your Dockerfile that will always change, for example a label which includes a timestamp
