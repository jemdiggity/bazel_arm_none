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
        "@toolchain_gcc_arm_none//:gcc",
    ],
)

filegroup(
    name = "ar",
    srcs = [
        "arm-none-eabi-ar",
        "@toolchain_gcc_arm_none//:ar",
    ],
)

filegroup(
    name = "ld",
    srcs = [
        "arm-none-eabi-ld",
        "@toolchain_gcc_arm_none//:ld",
    ],
)

filegroup(
    name = "nm",
    srcs = [
        "arm-none-eabi-nm",
        "@toolchain_gcc_arm_none//:nm",
    ],
)

filegroup(
    name = "objcopy",
    srcs = [
        "arm-none-eabi-objcopy",
        "@toolchain_gcc_arm_none//:objcopy",
    ],
)

filegroup(
    name = "objdump",
    srcs = [
        "arm-none-eabi-objdump",
        "@toolchain_gcc_arm_none//:objdump",
    ],
)

filegroup(
    name = "strip",
    srcs = [
        "arm-none-eabi-strip",
        "@toolchain_gcc_arm_none//:strip",
    ],
)

filegroup(
    name = "as",
    srcs = [
        "arm-none-eabi-as",
        "@toolchain_gcc_arm_none//:as",
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
