#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PARENT_DIR=$(dirname ${SCRIPT_DIR})
PARENT_DIR=$(dirname ${PARENT_DIR})

docker run -v ${PARENT_DIR}:/opt -w /opt/NWu-Non3GPP-5GC --cap-add NET_ADMIN --privileged -it n3iwf-sim 
