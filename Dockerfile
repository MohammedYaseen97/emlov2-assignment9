# our base image
FROM python:3.8-slim

ENV GRADIO_SERVER_PORT 80

# set working directory inside the image
WORKDIR /opt/src

# copy our requirements
COPY requirements.txt requirements.txt

# install dependencies
RUN pip install -r requirements.txt && rm -rf /root/.cache/pip

# copy the full project inside
COPY . .

# expose the port
EXPOSE 80

# run the scripted model
ENTRYPOINT ["python3", "src/demo_scripted.py"]