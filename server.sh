sudo dockerd                 \
    --tls                \
    --tlscacert=./certs/ca.pem         \
    --tlscert=./certs/server-cert.pem  \
    --tlskey=./certs/server-key.pem    \
    -H=0.0.0.0:2376
