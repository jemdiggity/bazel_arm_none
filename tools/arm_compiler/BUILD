# This is the entry point for --crosstool_top.  Toolchains are found
# by lopping off the name of --crosstool_top and searching for
# 'cc-compiler-${CPU}' in this BUILD file, where CPU is the target CPU
# specified in --cpu.
#
# This file group should include
#   * all cc_toolchain targets supported
#   * all file groups that said cc_toolchain might refer to,
# including the default_grte_top setting in the CROSSTOOL
# protobuf.
filegroup(
    name = "toolchain_fg",
    srcs = [
        ":cc-compiler-armeabi-v7a",
        ":cc-compiler-k8",
        ":gcc_arm_none_all_files",
        "@toolchain_gcc_arm_none//:compiler_components",
    ],
)

filegroup(
    name = "srcs",
    srcs = glob(["**"]) + [
        "//tools/arm_compiler/arm_none_eabi:srcs",
    ],
    visibility = ["//hello:__pkg__"],
)

cc_toolchain_suite(
    name = "toolchain",
    # target_cpu | compiler
    toolchains = {
        "armeabi-v7a|compiler": "cc-compiler-armeabi-v7a",
        "k8|compiler": "cc-compiler-k8",
        "darwin|compiler": ":cc-compiler-darwin",
    },
)

filegroup(
    name = "gcc_arm_none_all_files",
    srcs = [
        "//tools/arm_compiler/arm_none_eabi:tool-wrappers",
        "@toolchain_gcc_arm_none//:compiler_pieces",
    ],
)

filegroup(
    name = "gcc_arm_none_linker_files",
    srcs = [
        "//tools/arm_compiler/arm_none_eabi:ar",
        "//tools/arm_compiler/arm_none_eabi:gcc",
        "//tools/arm_compiler/arm_none_eabi:ld",
        "@toolchain_gcc_arm_none//:compiler_pieces",
    ],
)

filegroup(
    name = "gcc_arm_none_compiler_files",
    srcs = [
        "//tools/arm_compiler/arm_none_eabi:as",
        "//tools/arm_compiler/arm_none_eabi:gcc",
        "//tools/arm_compiler/arm_none_eabi:ld",
    ],
)

filegroup(
    name = "empty",
    srcs = [],
)

cc_toolchain(
    name = "cc-compiler-armeabi-v7a",
    all_files = ":gcc_arm_none_all_files",
    compiler_files = ":gcc_arm_none_compiler_files",
    cpu = "armeabi-v7a",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":gcc_arm_none_linker_files",
    objcopy_files = "//tools/arm_compiler/arm_none_eabi:objcopy",
    static_runtime_libs = [":empty"],
    strip_files = "//tools/arm_compiler/arm_none_eabi:strip",
    supports_param_files = 1,
    visibility = ["//visibility:public"],
)

cc_toolchain(
    name = "cc-compiler-k8",
    all_files = ":empty",
    compiler_files = ":empty",
    cpu = "local",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":empty",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 1,
)

cc_toolchain(
    name = "cc-compiler-darwin",
    all_files = ":empty",
    compiler_files = ":empty",
    cpu = "darwin",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":empty",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 0,
)
