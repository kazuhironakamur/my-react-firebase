#!/bin/zsh
docker run -it --rm -p 3000:3000 -v $(pwd)/public:/my-app/public -v $(pwd)/src:/my-app/src --name my-career my-react