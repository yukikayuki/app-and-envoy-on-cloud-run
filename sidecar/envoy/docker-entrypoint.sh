#!/bin/sh
# https://blog.markvincze.com/how-to-use-envoy-as-a-load-balancer-in-kubernetes/
set -e

echo "Generating envoy.yaml config file..."
cat /tmpl/envoy.tmpl.yaml | envsubst \$PROXY_TARGET_ADDRESS > /etc/envoy.yaml

echo "Starting Envoy..."
/usr/local/bin/envoy -c /etc/envoy.yaml
