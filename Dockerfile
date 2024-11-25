FROM fedora:40

RUN dnf -y install curl git nodejs

RUN git clone https://github.com/vanceism7/keeweb.git
WORKDIR /keeweb
RUN npm install -g grunt && \
    npm install electron-builder@22.11.4 --save-exact

COPY Gruntfile.appimage.js /keeweb
ENV NODE_OPTIONS=--openssl-legacy-provider
ENTRYPOINT ["grunt"]
CMD ["default", "desktop-linux",  "--gruntfile", "Gruntfile.appimage.js"]
