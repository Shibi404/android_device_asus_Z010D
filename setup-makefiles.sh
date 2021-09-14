#!/bin/bash
#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=Z010D
export DEVICE_COMMON=msm8916-common
export VENDOR=asus

export DEVICE_BRINGUP_YEAR=2015

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
