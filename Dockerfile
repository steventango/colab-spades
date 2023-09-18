FROM us-docker.pkg.dev/colab-images/public/runtime:latest as colab
ARG SPADES_VERSION

# Download SPAdes source code
RUN wget http://cab.spbu.ru/files/release${SPADES_VERSION}/SPAdes-${SPADES_VERSION}.tar.gz
# Extract SPAdes source code
RUN tar -xzf SPAdes-${SPADES_VERSION}.tar.gz
# Compile SPAdes
WORKDIR /SPAdes-${SPADES_VERSION}
RUN ./spades_compile.sh
# Create tarball
RUN tar -czf ./SPAdes-${SPADES_VERSION}-Colab.tar.gz ./bin ./share

FROM scratch
ARG SPADES_VERSION
COPY --from=colab /SPAdes-${SPADES_VERSION}/SPAdes-${SPADES_VERSION}-Colab.tar.gz .
