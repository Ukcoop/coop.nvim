#!/usr/bin/env bash

# Path to your Dockerfile folder
DOCKERFILE_DIR="$HOME/.config/nvim"

# Image name
IMAGE_NAME="my-nvim:latest"

# Build the image (with no cache to force rebuild if you want, or remove --no-cache for faster builds)

(cd ~/.config/nvim && DOCKER_BUILDKIT=1 docker build \
  --build-arg USER_ID=$(id -u) \
  --build-arg GROUP_ID=$(id -g) \
  --cache-from my-nvim:latest \
  -t my-nvim:latest .)

# Run the container with mounts and user config
docker run --rm -it \
  -v "$PWD":"$PWD" \
  -w "$PWD" \
  -v "$HOME/.config/nvim":"/home/dev/.config/nvim" \
  -v "$HOME/.cache/nvim":"/home/dev/.cache/nvim" \
  -v "$HOME/.local":"/home/dev/.local" \
  -e TERM -e HOME=/home/dev \
  -u "$(id -u):$(id -g)" \
  my-nvim:latest "$@"
