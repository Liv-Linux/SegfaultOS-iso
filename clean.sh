#!/bin/bash

lb clean

lb config \
    -d trixie \
    --architectures amd64 \
    --archive-areas "main contrib non-free non-free-firmware" \
    --debootstrap-options "--variant=minbase" \
    --image-name "livetest"

lb build
