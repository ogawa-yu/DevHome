#!/bin/sh

url_encode() {
    nkf -W8MQ |
        sed 's/=$//' |
        tr '=' '%' |
        paste -s -d '\0' - |
        sed -e 's/%7E/~/g' \
            -e 's/%5F/_/g' \
            -e 's/%2D/-/g' \
            -e 's/%2E/./g'
}

url_encode
