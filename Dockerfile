ARG BASE_IMAGE=rustlang/rust:nightly
FROM ${BASE_IMAGE}

RUN ((cat /etc/os-release | grep ID | grep alpine) && apk add --no-cache musl-dev || true) \
    && cargo install cargo-chef \
    && rm -rf $CARGO_HOME/registry/