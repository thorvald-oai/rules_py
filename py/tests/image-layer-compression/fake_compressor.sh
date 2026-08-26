#!/usr/bin/env bash
# Stand-in for a compressor libarchive has no filter for (brotli, a corporate
# packer, ...). It has to read the archive on stdin and write the compressed
# stream to stdout; the arguments only prove bsdtar passes them through.
set -euo pipefail
if [[ "${1:-}" != "--loud" ]]; then
    echo "fake_compressor: expected --loud, got '${1:-}'" >&2
    exit 1
fi
exec gzip -9 -n
