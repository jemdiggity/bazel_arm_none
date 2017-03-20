workspace(name = "com_github_jemdiggity_ble_proj")

load("//:workspace.bzl", "check_version")
# We must check the bazel version before trying to parse any other BUILD files,
# in case the parsing of those build files depends on the bazel version we
# require here.
check_version("0.4.4")

new_http_archive(
  name = 'toolchain_gcc_arm_none_darwin',
  build_file = 'compilers/gcc_arm_none.BUILD',
  urls = ['https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-mac.tar.bz2'],
  sha256 = "5656cdec40f99d5c054a85bbc694276e1c4a1488cdacbbc448bc6acd3bbe070d",
  strip_prefix = 'gcc-arm-none-eabi-5_4-2016q3',
)
