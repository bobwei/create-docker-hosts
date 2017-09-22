docker                    \
    --tls                \
    --tlscacert=./certs/ca.pem         \
    --tlscert=./certs/cert.pem         \
    --tlskey=./certs/key.pem           \
    -H=0.0.0.0:2376 ps
