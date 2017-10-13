# README

create-docker-hosts is a tool used to create docker hosts from script.


## Usage

- [Prepare Certificates](#prepare-certificates)
- [Install](#install)

### Prepare Certificates

Use `create_certificates.sh` to generate certificates and store it to somewhere accessible from vms. For example, you can store certificates to private git repository and clone it on vms.

#### Create certificates and store certificates to private git repository. ( Some steps ignored )

```bash
./create_certificates.sh
```

#### Clone certificates on vms

```bash
git clone $CERTIFICATES_REPO /var/docker/certs
```

Expecting `/var/docker/certs/ca.pem`, `/var/docker/certs/server-cert.pem`, `/var/docker/certs/server-key.pem` exists ( [See detail](./daemon.json) )

### Install

Installation script assumes that there exists a `certs/` folder containing certificates used for docker security. Once `certs/` is ready, install with following command.

```bash
./install.sh
```

## Notes

Current version of install.sh runs docker daemon in http mode resulting in insecure settings. So please run your docker hosts in internal network.
