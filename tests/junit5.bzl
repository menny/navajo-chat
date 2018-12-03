"""External dependencies & java_junit5_test rule"""
""" Taken from https://github.com/junit-team/junit5-samples/tree/master/junit5-jupiter-starter-bazel"""

JUNIT_JUPITER_VERSION = "5.3.2"
JUNIT_JUPITER_GROUP_ID = "org.junit.jupiter"
JUNIT_JUPITER_ARTIFACT_ID_LIST = [
    "junit-jupiter-api",
    "junit-jupiter-engine",
    "junit-jupiter-params",
]

JUNIT_PLATFORM_VERSION = "1.3.2"
JUNIT_PLATFORM_GROUP_ID = "org.junit.platform"
JUNIT_PLATFORM_ARTIFACT_ID_LIST = [
    "junit-platform-commons",
    "junit-platform-console",
    "junit-platform-engine",
    "junit-platform-launcher",
    "junit-platform-suite-api",
]

JUNIT_EXTRA_DEPENDENCIES = [
    "org.apiguardian:apiguardian-api:1.0.0",
    "org.opentest4j:opentest4j:1.1.1",
]

JUNIT_MAVEN_DEPS = \
    ['{}:{}:{}'.format(JUNIT_JUPITER_GROUP_ID, artifact, JUNIT_JUPITER_VERSION) for artifact in JUNIT_JUPITER_ARTIFACT_ID_LIST] + \
    ['{}:{}:{}'.format(JUNIT_PLATFORM_GROUP_ID, artifact, JUNIT_PLATFORM_VERSION) for artifact in JUNIT_PLATFORM_ARTIFACT_ID_LIST] + \
    JUNIT_EXTRA_DEPENDENCIES

RESOLVED_JUNIT_MAVEN_DEPS = \
    ['//tests:junit5___{}__{}'.format(JUNIT_JUPITER_GROUP_ID.replace('.', '_'), artifact.replace('-', '_')) for artifact in JUNIT_JUPITER_ARTIFACT_ID_LIST] + \
    ['//tests:junit5___{}__{}'.format(JUNIT_PLATFORM_GROUP_ID.replace('.', '_'), artifact.replace('-', '_')) for artifact in JUNIT_PLATFORM_ARTIFACT_ID_LIST]

def java_junit5_test(name, srcs, test_class = None, deps = [], runtime_deps = [], **kwargs):
    FILTER_KWARGS = [
        "main_class",
        "use_testrunner",
        "args",
    ]

    for arg in FILTER_KWARGS:
        if arg in kwargs.keys():
            kwargs.pop(arg)

    junit_console_args = []
    if test_class:
        junit_console_args += ["--select-class", test_class]
    else:
        fail("must specific 'test_class'")

    native.java_test(
        name = name,
        srcs = srcs,
        use_testrunner = False,
        main_class = "org.junit.platform.console.ConsoleLauncher",
        args = junit_console_args,
        deps = deps + RESOLVED_JUNIT_MAVEN_DEPS,
        runtime_deps = runtime_deps + RESOLVED_JUNIT_MAVEN_DEPS,
        **kwargs
    )

load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "kt_jvm_test")

def kt_junit5_test(name, srcs, test_class, friends, deps = [], runtime_deps = [], **kwargs):
    kt_jvm_test(
        name = name,
        srcs = srcs,
        test_class = test_class,
        main_class = "org.junit.platform.console.ConsoleLauncher",
        deps = deps + RESOLVED_JUNIT_MAVEN_DEPS,
        runtime_deps = runtime_deps + RESOLVED_JUNIT_MAVEN_DEPS,
        friends = friends,
        **kwargs
    )
