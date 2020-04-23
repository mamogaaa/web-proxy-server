#!/bin/bash
docker run -it --rm -v $(pwd):/log falms/sarg -l logs/access.log