FROM ubuntu

# Install JavaScript, React , npm packages
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm

# Set the NODE_OPTIONS environment variable
ENV NODE_OPTIONS=--openssl-legacy-provider

ADD . .

EXPOSE 3000

CMD [ "npm" , "start" ]