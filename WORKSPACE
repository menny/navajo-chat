workspace(name="navajo")

### http_archive
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file", "http_archive")

### Android SDK
android_sdk_repository(
    name = "androidsdk",
    api_level = 28,
    build_tools_version = "28.0.3")


### Kotlin rules
rules_kotlin_version = "no-src-support"
http_archive(
    name = "io_bazel_rules_kotlin",
    urls = ["https://github.com/menny/rules_kotlin/archive/%s.zip" % rules_kotlin_version],
    type = "zip",
    strip_prefix = "rules_kotlin-%s" % rules_kotlin_version
)

load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kotlin_repositories", "kt_register_toolchains")
kotlin_repositories()
kt_register_toolchains()

### Protobuf
http_archive(
    name = "com_google_protobuf",
    strip_prefix = "protobuf-3.6.1",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.6.1.zip"],
)

http_archive(
    name = "com_google_protobuf_javalite",
    strip_prefix = "protobuf-javalite",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/javalite.zip"],
)

# Bazel Maven Deps (https://github.com/menny/bazel-mvn-deps)
bazel_mvn_deps_version = "3d2c360b54e03d549684753e1de8b1a19fd5a0d5"
http_archive(
    name = "bazel_mvn_deps_rule",
    urls = ["https://github.com/menny/bazel-mvn-deps/archive/%s.zip" % bazel_mvn_deps_version],
    type = "zip",
    strip_prefix = "bazel-mvn-deps-%s" % bazel_mvn_deps_version
)
load("@bazel_mvn_deps_rule//resolver:bazel_mvn_deps_dependencies.bzl", "generate_bazel_mvn_deps_workspace_rules")
generate_bazel_mvn_deps_workspace_rules()

# Clients deps
# Android
load("//clients/android:resolved_main_dependencies.bzl", "generate_android_main_workspace_rules")
generate_android_main_workspace_rules()

# JUnit 5
load("//tests:resolved_dependencies.bzl", "generate_junit5_deps_workspace_rules")
generate_junit5_deps_workspace_rules()