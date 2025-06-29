FROM archlinux:latest

RUN pacman -Syu --noconfirm \
    neovim \
    ripgrep \
    fd \
    git \
    zip \
    unzip \
    base-devel \
    python-pip \
    nodejs \
    npm \
    rust \
    rust-analyzer

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN if ! getent group ${GROUP_ID}; then \
      groupadd -g ${GROUP_ID} dev; \
    fi && \
    useradd -m -u ${USER_ID} -g ${GROUP_ID} dev

# Copy the entrypoint script from current directory (where Dockerfile is)
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

USER dev
WORKDIR /home/dev

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["nvim"]
