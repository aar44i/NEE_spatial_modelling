#!/bin/bash
docker build . -t jupyter_nee
docker run --rm -p 8884:8888 -v $PWD:/code/ jupyter_nee jupyter notebook --no-browser\
     --NotebookApp.token=SecretToken --port 8888 --ip 0.0.0.0 --allow-root
