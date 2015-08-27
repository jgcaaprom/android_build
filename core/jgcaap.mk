#Most of the ideas are from Archi I just used his organization to be easier to try out new flags as also his on. All this flag optimization come from his idea. where you can find more at: https://github.com/ArchiDroid/android_build/commit/a062cc61184950df02c39a038c5bfaef5a8b268c
# General optimization level of target ARM compiled with GCC. Default: -O2
NEW_GCC_CFLAGS_ARM := -O2

# General optimization level of target THUMB compiled with GCC. Default: -Os
NEW_GCC_CFLAGS_THUMB := -Os -DNDEBUG

# Additional flags passed to all C targets compiled with GCC
NEW_GCC_CFLAGS := $(ALIGNED) -DNDEBUG


ALIGNED = -O2 -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -mcpu=cortex-a15 -mtune=cortex-a15
#-floop-flatten -floop-parallelize-all -ftree-loop-linear -floop-interchange -floop-strip-mine -floop-block -fgcse-las -ftree-slp-vectorize -ffunction-sections  -funwind-tables -fstack-protector -ftree-vectorize -fpredictive-commoning -fgcse-las -fgcse-lm -fgcse-sm -fsched-spec-load -Wno-invalid-command-line-argument -Wno-unused-command-line-argument

# Flags passed to all C targets compiled with GCC
NEW_GCC_CPPFLAGS := $(NEW_GCC_CFLAGS)

# Flags passed to linker (ld) of all C and C targets compiled with GCC
NEW_GCC_LDFLAGS := -Wl,--sort-common


# CLANG

# Flags passed to all C targets compiled with CLANG
NEW_CLANG_CFLAGS := $(ALIGNED) -Qunused-arguments -Wno-unknown-warning-option \
# Flags passed to all C targets compiled with CLANG
NEW_CLANG_CPPFLAGS := $(NEW_CLANG_CFLAGS)

# Flags passed to linker (ld) of all C and C targets compiled with CLANG
NEW_CLANG_LDFLAGS := -Wl,--sort-common

# Flags that are used by GCC, but are unknown to CLANG. If you get "argument unused during compilation" error, add the flag here
NEW_CLANG_UNKNOWN_FLAGS := \
  -mvectorize-with-neon-double \
  -mvectorize-with-neon-quad \
  -fgcse-after-reload \
  -fgcse-las \
  -fgcse-sm \
  -fgraphite \
  -fgraphite-identity \
  -fipa-pta \
  -floop-block \
  -floop-interchange \
  -floop-nest-optimize \
  -floop-parallelize-all \
  -ftree-parallelize-loops=2 \
  -ftree-parallelize-loops=4 \
  -ftree-parallelize-loops=8 \
  -ftree-parallelize-loops=16 \
  -floop-strip-mine \
  -fmodulo-sched \
  -fmodulo-sched-allow-regmoves \
  -frerun-cse-after-loop \
  -frename-registers \
  -fsection-anchors \
  -ftree-loop-im \
  -ftree-loop-ivcanon \
  -funsafe-loop-optimizations \
  -fweb \
  -fno-omit-frame-pointer \
  -fpic \
  -fno-tree-sra \
  -fno-partial-inlining \
  -fno-early-inlining \
  -fno-tree-copy-prop \
  -fno-tree-loop-optimize \
  -fno-move-loop-invariants 

#########################
#    KRAIT_TUNINGS      #
#########################
LOCAL_DISABLE_KRAIT := \
    libc_dns \
    libc_tzcode \
    bluetooth.default \
    libwebviewchromium \
    libwebviewchromium_loader \
    libwebviewchromium_plat_support \
    libbluetooth_jni \
    libbt-brcm_stack \
    audio.a2dp.default \
    libbt-brcm_bta \
    bt_stack.conf \
    libbt-brcm_bta \
    libbt-brcm_gki \
    libbt-brcm_stack \
    libbt-hci \
    libbt-utils \
    libosi \
    libtinyxml2 \
    libbt-qcom_sbc_decoder \
    android.bluetooth.client.map \
    bt_did.conf \
    auto_pair_devlist.conf

KRAIT_FLAGS := \
    -mcpu=cortex-a15 \
    -mtune=cortex-a15 

#####################
# STRICT_ALIASING   #
#####################
LOCAL_DISABLE_STRICT := \
    third_party_libyuv_libyuv_gyp \
    third_party_WebKit_Source_wtf_wtf_gyp \
    ipc_ipc_gyp \
    third_party_webrtc_base_rtc_base_gyp \
    courgette_courgette_lib_gyp \
    third_party_WebKit_Source_platform_blink_common_gyp \
    cc_cc_surfaces_gyp \
    net_http_server_gyp \
    base_base_gyp \
    ui_gfx_gfx_gyp \
    android_webview_native_webview_native_gyp \
    jingle_jingle_glue_gyp \
    ui_native_theme_native_theme_gyp \
    third_party_WebKit_Source_core_webcore_dom_gyp \
    third_party_WebKit_Source_core_webcore_html_gyp \
    third_party_WebKit_Source_core_webcore_rendering_gyp \
    third_party_WebKit_Source_core_webcore_svg_gyp \
    components_autofill_content_browser_gyp \
    ui_surface_surface_gyp \
    printing_printing_gyp \
    third_party_WebKit_Source_web_blink_web_gyp \
    third_party_webrtc_modules_media_file_gyp \
    cc_cc_gyp \
    storage_storage_gyp \
    android_webview_android_webview_common_gyp \
    content_content_browser_gyp \
    content_content_common_gyp \
    content_content_child_gyp \
    third_party_webrtc_modules_webrtc_utility_gyp \
    third_party_webrtc_modules_iLBC_gyp \
    third_party_webrtc_modules_neteq_gyp \
    third_party_webrtc_modules_audio_device_gyp\
    third_party_webrtc_modules_rtp_rtcp_gyp \
    components_data_reduction_proxy_browser_gyp \
    libunwind \
    libc_malloc \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.exfat \
    fsck.exfat \
    mount.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    libc_dns \
    libc_tzcode \
    libtwrpmtp \
    libfusetwrp \
    libguitwrp \
    busybox \
    toolbox \
    clatd \
    ip \
    libuclibcrpc \
    libpdfiumcore \
    libpdfiumcore \
    libpdfium \
    bluetooth.default \
    logd \
    mdnsd \
    libfuse \
    libcutils \
    liblog \
    healthd \
    adbd \
    libunwind \
    libsync \
    libnetutils \
    libusbhost \
    libfs_mgr \
    libvold \
    net_net_gyp \
    libstagefright_webm \
    libaudioflinger \
    libmediaplayerservice \
    libstagefright_avcenc \
    libstagefright_avc_common \
    libstagefright_httplive \
    libstagefright_rtsp \
    sdcard \
    libnetlink \
    libfdlibm \
    libvariablespeed \
    librtp_jni \
    libwilhelm \
    debuggerd \
    libbt-brcm_bta \
    libbt-brcm_stack \
    libdownmix \
    libldnhncr \
    libqcomvisualizer \
    libvisualizer \
    libutils \
    static_busybox \
    libstagefright_foundation \
    content_content_renderer_gyp \
    third_party_WebKit_Source_modules_modules_gyp \
    third_party_WebKit_Source_platform_blink_platform_gyp \
    third_party_WebKit_Source_core_webcore_remaining_gyp \
    third_party_angle_src_translator_lib_gyp \
    third_party_WebKit_Source_core_webcore_generated_gyp \
    libc_gdtoa \
    libc_openbsd \
    libc \
    libc_nomalloc \
    patchoat \
    dex2oat \
    libart \
    libart-compiler \
    oatdump \
    libart-disassembler \
    mm-vdec-omx-test \
    libziparchive-host \
    libziparchive \
    libdiskconfig \
    logd \
    linker \
    libjavacore \
    camera.bacon \
    libmmcamera_interface \
    tcpdump \
    libqsap_sdk

DISABLE_STRICT := \
    -fno-strict-aliasing

STRICT_ALIASING_FLAGS := \
    -fstrict-aliasing \
    -Werror=strict-aliasing

STRICT_GCC_LEVEL := \
    -Wstrict-aliasing=3

STRICT_CLANG_LEVEL := \
    -Wstrict-aliasing=2
#########################
#  END STRICT_ALIASING  #
#########################
