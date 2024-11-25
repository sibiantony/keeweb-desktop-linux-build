# keeweb-desktop-linux-build

* Dockerized local build for [KeeWeb](https://github.com/keeweb/keeweb) desktop appimages.
* Uses patched version from [vanceism7](https://github.com/vanceism7/keeweb) for Google Drive sync. 
* To change to official KeeWeb repository edit `Dockerfile` and change the url to `https://github.com/keeweb/keeweb.git`

## Build

        docker run -it -v ./dist:/keeweb/dist keeweb
        docker build -t keeweb .
        sudo chmod +x dist/desktop/KeeWeb-*.AppImage
