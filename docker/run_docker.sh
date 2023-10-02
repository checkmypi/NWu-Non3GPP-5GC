#!/bin/bash

# This script should be executed from the directory that contains NWu-Non3GPP-5GC

docker run -v $(pwd):/opt -it n3iwf-sim 
