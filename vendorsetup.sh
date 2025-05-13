#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

add_lunch_combo twrp_lake-user
add_lunch_combo twrp_lake-userdebug
add_lunch_combo twrp_lake-eng

export FOX_VERSION="R11.1"
export FOX_BUILD_TYPE="Beta"
export FOX_VARIANT="A12" 
export OF_MAINTAINER="YourName"
# Vendorboot specific settings
export OF_AB_DEVICE=1
export OF_VIRTUAL_AB_DEVICE=1
