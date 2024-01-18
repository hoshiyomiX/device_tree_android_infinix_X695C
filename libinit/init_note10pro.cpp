/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t maltose_info = {
    .hwc_value = "",
    .sku_value = "",
    .vendor_sku_value = "note10pro",

    .brand = "Infinix",
    .device = "X695C",
    .marketname = "Infinix Note 10 Pro",
    .model = "X695C-GL",
    .build_fingerprint = "Infinix/X695C-GL/Infinix-X695C:11/RP1A.200720.011/221114V356:user/release-keys",

    .nfc = false,
};

static const std::vector<variant_info_t> variants = {
    note10pro_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
