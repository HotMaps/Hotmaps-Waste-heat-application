#!/bin/bash
BASEDIR=$(dirname $PWD)
IMAGE_NAME='hotmaps/waste-heat-application'


# update the compose files
ip='localhost'

echo ip for docker is $ip
echo Creating container...

id=$(docker run -d -v "${BASEDIR}/code:/data" -p 8181:80 -it ${IMAGE_NAME})
exit_cod=$?

if [ ${exit_code} = 0 ]
    then
	    echo "Container creation script executed correctly (make sur the new container was successfuly added)"
		echo "Container's id: ${id}"
	else
	    echo "An error occurred! (exit code: ${exit_code})"
		docker stop ${id} >/dev/null
		docker rm ${id} >/dev/null
fi
