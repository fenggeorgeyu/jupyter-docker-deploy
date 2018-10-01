



name=jupyter-scipy-dk
image=jupyter/scipy-notebook
host_dir=$(shell pwd)
vol1=${host_dir}/work
mnt1=/home/jovyan/work
#vol2=${host_dir}/notebooks
#mnt2=~/notebooks
pl1=8888
pd1=8888
passwd=123




pull:
	docker pull ${image}

# docker run --rm -p 10000:8888 -e JUPYTER_LAB_ENABLE=yes -v "$PWD":/home/jovyan/work jupyter/datascience-notebook:e5c5a7d3e52d


create:
	docker run -d -it  --name ${name} -v ${vol1}:${mnt1} -p ${pl1}:${pd1} -e JUPYTER_LAB_ENABLE=yes -e "PASSWORD=${passwd}" -e GRANT_SUDO=yes  ${image}

# this is useful to get token to login
token:
	docker exec ${name} jupyter notebook list

bash:
	docker exec -it ${name} /bin/bash

stop:
	docker stop ${name}

start:
	docker start ${name}

delete:
	docker rm ${name}





