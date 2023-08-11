FROM timbru31/node-alpine-git:16
LABEL project="conduit" author="thinkster"
RUN git clone https://github.com/gothinkster/angular-realworld-example-app.git
RUN cd angular-realworld-example-app && npm install -g @angular/cli && npm install
EXPOSE 4200
WORKDIR /angular-realworld-example-app
CMD [ "ng", "serve", "--host", "0.0.0.0", "--disable-host-check" ]