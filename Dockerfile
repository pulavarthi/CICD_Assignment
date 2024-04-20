#Base image for our current docker file
FROM python:3.11.0

#Setting the working directory
WORKDIR /code

#Copying the source code from host to the container
COPY . /code

#Installing the required packages
RUN pip -m install -r requirements.txt

#Exposing the port 80
EXPOSE 80

#Running the train.py file during building phase
RUN python train.py

#Command instruction to run when the container starts
CMD ["python", "test.py"]