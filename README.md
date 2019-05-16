
### Sandbox 

Is a docker image with tools that you might need within a cluster of kubernetes but that you do not want your pods to have in their base image.

### How to use

Pull the image

`docker pull ismaleiva90/sandbox`

Run image

`docker run -dp 8080:8080 --name sandbox ismaleiva90/sandbox` 

Test in the browser

`localhost:8080`

Test with terminal using curl

`curl  localhost:8080` 

Entering inside the container

`docker exec -it sandbox bash`

### Author

**Ismael Leiva**

* [github/isma90](https://github.com/isma90)
* [stackoverflow/isma90](https://stackoverflow.com/users/2043313/isma90?tab=profile)

### License

Copyright © 2017, [Ismael Leiva](https://github.com/isma90).
Released under the [MIT License](LICENSE).
