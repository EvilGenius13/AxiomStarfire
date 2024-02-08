# Axiom StarFire
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/evilgenius13/axiomstarfire/latest?logo=docker)
[![Build status](https://badge.buildkite.com/6ff6fd6990a44de89a41fb1b93f31efcaf6e6c91545f5f8eab.svg)](https://buildkite.com/timewellspent/dev-build)

A lightweight, fast way to send data from your server to axiom for logging. 

## Installation
```bash
pip3 install -r requirements.txt
```

## Environment Variables
You need the following variables to run the app.
```bash
AXIOM_API_KEY=your_api_key
AXIOM_DATASET=your_dataset
```

## Usage
*Locally*
```python
uvicorn app:app --reload
```

*Docker*
```bash
docker run -d -p 8000:8000 evilgenius13/axiomstarfire
```


