FROM rust:1.78-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y git curl unzip xz-utils direnv && \
    rm -rf /var/lib/apt/lists/*

# Install just
RUN cargo install just --locked

# Install flutter
RUN git clone https://github.com/flutter/flutter.git -b stable /opt/flutter && \
    /opt/flutter/bin/flutter --version || true
ENV PATH="/opt/flutter/bin:$PATH"

CMD ["bash"]
