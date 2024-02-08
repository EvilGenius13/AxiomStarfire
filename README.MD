# Axiom StarFire
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/evilgenius13/axiomstarfire/latest?logo=docker)

A lightweight, fast way to send data from your server to axiom for logging. 

## Installation
```bash
pip3 install -r requirements.txt
```

## Usage
Local Code
```python
uvicorn app:app --reload
```

Docker
```bash
docker run -d -p 8000:8000 evilgenius13/axiomstarfire
```


