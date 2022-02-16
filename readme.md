# Install
* Clone this repo locally

* Create web/secret.yaml and coreapi/secret.yaml, there are example files in the directory to show the structure.

* Ensure the command runs with no errors

* `make`

* Actually perform install

* `make apply`

* Now wait for everything to come up, you can monitor status with.

* `make status`

* After all pods are running, expose the main web container.

* `make serve`

* Finally open your browser and head to http://127.0.0.1.nip.io:8080/ this is a nip.io proxy to allow subdomains on your local machine without editing your hosts file.

# Load sample images -> from PRISM Sample data
oc rsync ./pathology/ deployment/imageloader:/data/images
oc exec deployment/imageloader -- imageloader -src /data/images/example.csv -username admin -password bluecheese2018 -collectionname Public
