# keeweb-desktop-linux-build

* Dockerized local build for [KeeWeb](https://github.com/keeweb/keeweb) desktop appimages.
* Uses patched version from [vanceism7](https://github.com/vanceism7/keeweb) for Google Drive sync. 
* To change to official KeeWeb repository edit `Dockerfile` and change the url to `https://github.com/keeweb/keeweb.git`

## Build

        docker build -t keeweb .
        docker run -it -v ./dist:/keeweb/dist keeweb
        sudo chmod +x dist/desktop/KeeWeb-*.AppImage
