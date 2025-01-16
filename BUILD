
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "lib",
    srcs = glob(["Bazel_Migrate/Soruce/*.swift"]),
)

ios_application(
    name = "iOSApp",
    bundle_id = "com.Atmecs.Bazel.Migrate",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Bazel_Migrate/Info.plist"],
    minimum_os_version = "17.0",
    visibility = ["//visibility:public"],
    deps = [":lib"],
    resources = ["Bazel_Migrate/Base.lproj/Main.storyboard"],
)
