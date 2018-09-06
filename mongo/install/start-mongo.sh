#!/usr/bin/env bash

docker run --rm -d -p 27017:27017 --name codebattle-mongo -v codebattle-mongo-db:/data/db \
    -v /root/data/mongo/secrets:/run/secrets \
    -e MONGO_INITDB_ROOT_USERNAME_FILE=/run/secrets/mongo-root-username  \
    -e MONGO_INITDB_ROOT_PASSWORD_FILE=/run/secrets/mongo-root-password \
    mongo
