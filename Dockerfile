FROM us-docker.pkg.dev/colab-images/public/runtime:latest
ARG version

# Download SPAdes source code
RUN wget http://cab.spbu.ru/files/release${version}/SPAdes-${version}.tar.gz
# Extract SPAdes source code
RUN tar -xzf SPAdes-${version}.tar.gz
# Compile SPAdes
RUN ./SPAdes-${version}/spades_compile.sh
# Create tarball
RUN tar -czf ./SPAdes-${version}-Linux.tar.gz ./SPAdes-${version}/bin ./SPAdes-${version}/share
# Create release
RUN gh release create v${version} ./SPAdes-${version}-Linux.tar.gz
