# My personal API !

Needed for small projects where I need an API endpoint.

### How to start it

* Run ``docker build --no-cache -t personal-api .``
* Run ``docker run -p 4000:4000 -it --pid=host --rm --name personal-api -v ${PWD}:/usr/src/app personal-api``