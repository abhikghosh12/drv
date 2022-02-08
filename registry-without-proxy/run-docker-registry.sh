#!/bin/bash

mkdir -p /data/docker-registry/data_registry_without_proxy/data/

sh docker run --privileged -d -p 5001:5000 \
	-v /data/certs:/certs \
	-v /data/docker-registry/data_registry_without_proxy/data/:/var/lib/registry/ \
	-e "REGISTRY_HTTP_TLS_CERTIFICATE=/certs/<server-certificate-name>.crt" \
	-e "REGISTRY_HTTP_TLS_KEY=/certs/<server-certificate-keyfile-name>.key" \
	-e "https_proxy=<https-proxy>" \
	-e "http_proxy=<http-proxy>" \
	--restart=always --name bootstrapregistry registry:drvcert