#!/bin/bash
set -e

chown -R dev:dev /home/dev/.local || true
chown -R dev:dev /home/dev/.config/nvim || true
chown -R dev:dev /home/dev/.cache/nvim || true

exec nvim "$@"
