workspace(name = "com_github_jemdiggity_ble_proj")

load("//:workspace.bzl", "check_version")
# We must check the bazel version before trying to parse any other BUILD files,
# in case the parsing of those build files depends on the bazel version we
# require here.
check_version("0.4.4")

git_repository(
    name = "com_github_jemdiggity_rules_os_dependent_http_archive",
    remote = "https://github.com/jemdiggity/rules_os_dependent_http_archive.git",
    commit = "b1e3ed2fd829dfd1602bc31df4804ff34149f659",
)

load("@com_github_jemdiggity_rules_os_dependent_http_archive//:os_dependent_http_archive.bzl", "os_dependent_http_archive")

load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
)

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
    "new_git_repository",
)

os_dependent_http_archive(
  name = "toolchain_gcc_arm_none",
  build_file = "//:compilers/gcc_arm_none.BUILD",
  strip_prefix = 'gcc-arm-none-eabi-5_4-2016q3',
  urls = {
    "linux" : ["https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2"],
    "darwin" : ['https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-mac.tar.bz2'],
  },
  sha256 = {
    "linux" : "a397c49bdd0cf17a38a494cb691baf68b8dcffa4d4c06561ef3d71b2ab4c92a1",
    "darwin" : "5656cdec40f99d5c054a85bbc694276e1c4a1488cdacbbc448bc6acd3bbe070d",
  },
)
