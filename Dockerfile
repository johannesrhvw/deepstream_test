FROM nvcr.io/nvidia/deepstream:7.0-samples-multiarch

WORKDIR /app

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-opencv

COPY ./src /app

CMD ["python3", "app.py"]
