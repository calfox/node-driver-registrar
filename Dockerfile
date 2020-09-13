FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI Node driver registrar"

ARG TARGETPLATFORM

COPY ./bin/csi-node-driver-registrar/${TARGETPLATFORM} csi-node-driver-registrar
ENTRYPOINT ["/csi-node-driver-registrar"]
