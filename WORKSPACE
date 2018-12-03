workspace(name="navajo")

### http_archive
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file", "http_archive")

### Android SDK
android_sdk_repository(
    name = "androidsdk",
    api_level = 28,
    build_tools_version = "28.0.3")


### Kotlin rules
rules_kotlin_version = "92a3cfc08f7f7551ddc1bf92cdc6defb1080b5ff"
http_archive(
    name = "io_bazel_rules_kotlin",
    urls = ["https://github.com/bazelbuild/rules_kotlin/archive/%s.zip" % rules_kotlin_version],
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

# Clients deps
# Android
load("//clients/android:resolved_main_dependencies.bzl", "generate_android_main_workspace_rules")
generate_android_main_workspace_rules()


# Maven deps
load("//others/migration-tooling:dependencies.bzl", "generate_migration_tools_workspace_rules")
generate_migration_tools_workspace_rules()


# JUnit 5
load("//tests:resolved_dependencies.bzl", "generate_junit5_deps_workspace_rules")
generate_junit5_deps_workspace_rules()