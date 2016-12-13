package(default_visibility = ["//tools/arm_compiler:__pkg__"])

filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//tools/arm_compiler:__pkg__"],
)

filegroup(
    name = "gcc",
    srcs = [
        "arm-none-eabi-gcc",
        "@toolchain_gcc_arm_none_darwin//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "arm-none-eabi-ar",
        "@toolchain_gcc_arm_none_darwin//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "arm-none-eabi-ld",
        "@toolchain_gcc_arm_none_darwin//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "arm-none-eabi-nm",
        "@toolchain_gcc_arm_none_darwin//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "arm-none-eabi-objcopy",
        "@toolchain_gcc_arm_none_darwin//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "arm-none-eabi-objdump",
        "@toolchain_gcc_arm_none_darwin//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "arm-none-eabi-strip",
        "@toolchain_gcc_arm_none_darwin//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "arm-none-eabi-as",
        "@toolchain_gcc_arm_none_darwin//:as",
    ],
)

filegroup(
    name = "tool-wrappers",
    srcs = [
        ":ar",
        ":as",
        ":gcc",
        ":ld",
        ":nm",
        ":objcopy",
        ":objdump",
        ":strip",
    ],
)
