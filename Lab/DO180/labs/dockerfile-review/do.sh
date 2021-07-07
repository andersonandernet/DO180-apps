podman stop -a
podman rm -a
podman rmi -a
podman build --layers=false  -t do180/custom-apache .
podman run -d --name containerfile -p 20080:8080 do180/custom-apache
sleep 5
curl 127.0.0.1:20080
lab dockerfile-review grade

