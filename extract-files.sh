#!/bin/sh

set -e

export DEVICE=Z00L
export VENDOR=asus
./../../$VENDOR/msm8939-common/extract-files.sh $@
