android_binary(
    name = "app",
    visibility = ["//visibility:public"],
    manifest = "src/main/AndroidManifest.xml",
    srcs = glob(["src/main/java/net/evendanan/navajo/**"]),
    custom_package = "net.evendanan.navajo",
    resource_files = glob(["src/main/res/**"]),
    shrink_resources = True,
    crunch_png = True,
)