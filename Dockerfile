FROM node:latest

WORKDIR /usr/src/app/



RUN npm install -g gatsby-cli
RUN git clone https://github.com/Mahassen1/CV-MB.git .
RUN npm install

EXPOSE 8000

CMD ["gatsby", "develop", "-H", "0.0.0.0"]

#docker build -t cvmahassen .
#docker run -d -p 9000:8000 cvmahassen
