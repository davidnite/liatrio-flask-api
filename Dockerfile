# Using lightweight alpine image
FROM python:3.8-alpine

# Installing packages
RUN apk update

# Defining working directory and adding source code
WORKDIR /usr/src/app
COPY requirements.txt bootstrap.sh ./
COPY flaskApi ./flaskApi

# Install API dependencies
RUN pip3 install -r requirements.txt
RUN ["chmod", "+x", "/usr/src/app/bootstrap.sh"]

# Start app
EXPOSE 5000
ENTRYPOINT ["/usr/src/app/bootstrap.sh"]