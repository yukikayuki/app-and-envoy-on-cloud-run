# https://blog.markvincze.com/how-to-use-envoy-as-a-load-balancer-in-kubernetes/
FROM envoyproxy/envoy:v1.27.1
COPY envoy.tmpl.yaml /tmpl/envoy.tmpl.yaml
COPY docker-entrypoint.sh /

RUN chmod 500 /docker-entrypoint.sh

RUN apt-get update && \
    apt-get install gettext -y

EXPOSE 9001

ENTRYPOINT ["/docker-entrypoint.sh"]
