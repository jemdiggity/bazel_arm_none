filegroup(
    name = "srcs",
    srcs = glob(["**"]),
    visibility = ["//src/test/shell/bazel/testdata:__pkg__"],
)

cc_binary(
    name = "hello",
    srcs = ["hello.cc"],
    linkopts = [
        "-lc",
        "-lstdc++",
        "--specs=rdimon.specs",
        "-Wl,--start-group",
        "-lgcc",
        "-lrdimon",
        "-Wl,--end-group",
    ],
)
