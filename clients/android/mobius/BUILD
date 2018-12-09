load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kt_jvm_library")
load("//tests:junit5.bzl", "kt_junit5_test")

kt_jvm_library(
    name = "mobius",
    visibility = ["//visibility:public"],
    srcs = glob(["src/**/*.kt"]),
    deps = [
        "//clients/android:android___com_spotify_mobius__mobius_core",
    ],
    exports = [
        "//clients/android:android___com_spotify_mobius__mobius_core",
    ]
)

kt_junit5_test(
    name = "mobius_test",
    friends = [":mobius"],
    visibility = ["//visibility:public"],
    srcs = ["tests/MobiusTests.kt"],
    test_class = "net.evendanan.navajo.mobius.tests.MobiusTests",
)