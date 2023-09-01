FROM bitnami/pytorch

WORKDIR /app

# Installing requirements to image
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# Setting up a cache for transformers and downloading the model
COPY ./src/models.py /app/src/models.py
ENV TRANSFORMERS_CACHE=/app/.cache
RUN python /app/src/models.py

COPY . .

CMD [ "python", "./src/app.py" ]