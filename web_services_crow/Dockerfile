FROM gcc:10.3.0

LABEL maintainer="Dmitry Ivanov <d.k.ivanov@live.com>"

RUN set -eux                                            \
    && apt-get -qq update                               \
    && apt-get -qq upgrade                              \
    && apt-get -qq install cmake                        \
    && ln -s /usr/local/bin/gfortran /usr/bin/gfortran  \
    && apt-get -qq install libboost-all-dev=1.67.0.1    \
    && apt-get -qq install build-essential              \
    && apt-get -qq install libtcmalloc-minimal4         \
    && ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.so
