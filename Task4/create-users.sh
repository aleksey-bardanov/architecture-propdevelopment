#!/bin/bash

function create_user {
    # Тут нужно проверять сколько аргументов передано и что это за аргументы, но не будем этим заниматься
    user=${1}
    group=${2}

    openssl genrsa -out ${user}.key 2048
    openssl req -new -key ${user}.key -out ${user}.csr -subj "/CN=${user}/O=${group}"
    openssl x509 -req -in ${user}.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out ${user}.crt -days 365

    echo "Создан пользователь ${user}"
}

create_user user1 smart-home-developer
create_user user2 admin
create_user user3 admin