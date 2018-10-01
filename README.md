# jupyter-docker-deploy

[documentation of jupyter dockers][https://jupyter-docker-stacks.readthedocs.io/en/latest/]

deploy a Jupyter server (Scipy Notebook) in docker

[Jupyter docker image selection][https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html]

First create a folder in your workspace, cd into the folder you created.

To pull the docker image:

    make pull

To crate the docker container:

    make create

Then in your web browser type `http://localhost:8888`. This will show the IPython server. The password is `123`. You may change the password in the makefile `passwd`.
