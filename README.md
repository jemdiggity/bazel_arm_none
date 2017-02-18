# bazel_arm_none
Bazel for GNU ARM Embedded Toolchain

$ bazel build --crosstool_top=tools/arm_compiler:toolchain --cpu=armeabi-v7a :hello
