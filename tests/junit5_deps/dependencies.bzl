# Auto-generated by https://github.com/menny/bazel-mvn-deps


# Loading a drop-in replacement for native.http_file
load('@bazel_tools//tools/build_defs/repo:http.bzl', 'http_file')

# Repository rules macro to be run in the WORKSPACE file.
def generate_workspace_rules():
    # org.junit.platform:junit-platform-console:jar:1.3.2 got requested version
    http_file(name = 'junit5_deps___org_junit_platform__junit-platform-launcher__1_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/platform/junit-platform-launcher/1.3.2/junit-platform-launcher-1.3.2.jar'],
        downloaded_file_path = 'junit-platform-launcher-1.3.2.jar',
    )
    http_file(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/jupiter/junit-jupiter-params/5.3.2/junit-jupiter-params-5.3.2.jar'],
        downloaded_file_path = 'junit-jupiter-params-5.3.2.jar',
    )
    # org.junit.platform:junit-platform-suite-api:jar:1.3.2 got requested version
    # org.junit.platform:junit-platform-engine:jar:1.3.2 got requested version
    # org.junit.jupiter:junit-jupiter-api:jar:5.3.2 got requested version
    http_file(name = 'junit5_deps___org_junit_platform__junit-platform-commons__1_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/platform/junit-platform-commons/1.3.2/junit-platform-commons-1.3.2.jar'],
        downloaded_file_path = 'junit-platform-commons-1.3.2.jar',
    )
    http_file(name = 'junit5_deps___org_junit_platform__junit-platform-suite-api__1_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/platform/junit-platform-suite-api/1.3.2/junit-platform-suite-api-1.3.2.jar'],
        downloaded_file_path = 'junit-platform-suite-api-1.3.2.jar',
    )
    # org.junit.jupiter:junit-jupiter-params:jar:5.3.2 got requested version
    # org.junit.jupiter:junit-jupiter-engine:jar:5.3.2 got requested version
    http_file(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/jupiter/junit-jupiter-api/5.3.2/junit-jupiter-api-5.3.2.jar'],
        downloaded_file_path = 'junit-jupiter-api-5.3.2.jar',
    )
    http_file(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-engine__5_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/jupiter/junit-jupiter-engine/5.3.2/junit-jupiter-engine-5.3.2.jar'],
        downloaded_file_path = 'junit-jupiter-engine-5.3.2.jar',
    )
    http_file(name = 'junit5_deps___org_junit_platform__junit-platform-console__1_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console/1.3.2/junit-platform-console-1.3.2.jar'],
        downloaded_file_path = 'junit-platform-console-1.3.2.jar',
    )
    # org.junit.platform:junit-platform-engine:jar:1.3.2 got requested version
    # org.junit.jupiter:junit-jupiter-api:jar:5.3.2 got requested version
    http_file(name = 'junit5_deps___org_opentest4j__opentest4j__1_1_1',
        urls = ['https://repo1.maven.org/maven2/org/opentest4j/opentest4j/1.1.1/opentest4j-1.1.1.jar'],
        downloaded_file_path = 'opentest4j-1.1.1.jar',
    )
    # org.junit.platform:junit-platform-suite-api:jar:1.3.2 got requested version
    # org.junit.platform:junit-platform-commons:jar:1.3.2 got requested version
    # org.junit.jupiter:junit-jupiter-params:jar:5.3.2 got requested version
    # org.junit.platform:junit-platform-launcher:jar:1.3.2 got requested version
    # org.junit.platform:junit-platform-console:jar:1.3.2 got requested version
    # org.junit.platform:junit-platform-engine:jar:1.3.2 got requested version
    # org.junit.jupiter:junit-jupiter-api:jar:5.3.2 got requested version
    # org.junit.jupiter:junit-jupiter-engine:jar:5.3.2 got requested version
    http_file(name = 'junit5_deps___org_apiguardian__apiguardian-api__1_0_0',
        urls = ['https://repo1.maven.org/maven2/org/apiguardian/apiguardian-api/1.0.0/apiguardian-api-1.0.0.jar'],
        downloaded_file_path = 'apiguardian-api-1.0.0.jar',
    )
    # org.junit.platform:junit-platform-launcher:jar:1.3.2 got requested version
    # org.junit.jupiter:junit-jupiter-engine:jar:5.3.2 got requested version
    http_file(name = 'junit5_deps___org_junit_platform__junit-platform-engine__1_3_2',
        urls = ['https://repo1.maven.org/maven2/org/junit/platform/junit-platform-engine/1.3.2/junit-platform-engine-1.3.2.jar'],
        downloaded_file_path = 'junit-platform-engine-1.3.2.jar',
    )

# Transitive rules macro to be run in the BUILD.bazel file.
# If you use kt_* rules, you MUST provide the correct rule implementation when call this macro, if you decide
# not to provide those implementations we'll try to use java_* rules.

def generate_transitive_dependency_targets(kt_jvm_import=None, kt_jvm_library=None):
    native.java_import(name = 'junit5_deps___org_junit_platform__junit-platform-launcher__1_3_2',
        jars = ['@junit5_deps___org_junit_platform__junit-platform-launcher__1_3_2//file'],
        deps = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_engine',
        ],
        exports = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_engine',
        ],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_junit_platform__junit_platform_launcher',
        actual = 'junit5_deps___org_junit_platform__junit-platform-launcher__1_3_2',
        visibility = ['//visibility:public'],
    )

    if kt_jvm_import == None:
        native.java_import(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2',
            jars = ['@junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2//file'],
            deps = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_jupiter__junit_jupiter_api',
            ],
            exports = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_jupiter__junit_jupiter_api',
            ],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2_kotlin_jar',
            jars = ['@junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2//file'],
        )

        kt_jvm_library(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2',
            runtime_deps = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2_kotlin_jar',
                ':junit5_deps___org_junit_jupiter__junit_jupiter_api',
            ],
            exports = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2_kotlin_jar',
                ':junit5_deps___org_junit_jupiter__junit_jupiter_api',
            ],
        )

    native.alias(name = 'junit5_deps___org_junit_jupiter__junit_jupiter_params',
        actual = 'junit5_deps___org_junit_jupiter__junit-jupiter-params__5_3_2',
        visibility = ['//visibility:public'],
    )

    native.java_import(name = 'junit5_deps___org_junit_platform__junit-platform-commons__1_3_2',
        jars = ['@junit5_deps___org_junit_platform__junit-platform-commons__1_3_2//file'],
        deps = [':junit5_deps___org_apiguardian__apiguardian_api'],
        exports = [':junit5_deps___org_apiguardian__apiguardian_api'],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_junit_platform__junit_platform_commons',
        actual = 'junit5_deps___org_junit_platform__junit-platform-commons__1_3_2',
        visibility = ['//visibility:public'],
    )

    native.java_import(name = 'junit5_deps___org_junit_platform__junit-platform-suite-api__1_3_2',
        jars = ['@junit5_deps___org_junit_platform__junit-platform-suite-api__1_3_2//file'],
        deps = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_commons',
        ],
        exports = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_commons',
        ],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_junit_platform__junit_platform_suite_api',
        actual = 'junit5_deps___org_junit_platform__junit-platform-suite-api__1_3_2',
        visibility = ['//visibility:public'],
    )

    if kt_jvm_import == None:
        native.java_import(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2',
            jars = ['@junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2//file'],
            deps = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_platform__junit_platform_commons',
                ':junit5_deps___org_opentest4j__opentest4j',
            ],
            exports = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_platform__junit_platform_commons',
                ':junit5_deps___org_opentest4j__opentest4j',
            ],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2_kotlin_jar',
            jars = ['@junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2//file'],
        )

        kt_jvm_library(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2',
            runtime_deps = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2_kotlin_jar',
                ':junit5_deps___org_junit_platform__junit_platform_commons',
                ':junit5_deps___org_opentest4j__opentest4j',
            ],
            exports = [
                ':junit5_deps___org_apiguardian__apiguardian_api',
                ':junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2_kotlin_jar',
                ':junit5_deps___org_junit_platform__junit_platform_commons',
                ':junit5_deps___org_opentest4j__opentest4j',
            ],
        )

    native.alias(name = 'junit5_deps___org_junit_jupiter__junit_jupiter_api',
        actual = 'junit5_deps___org_junit_jupiter__junit-jupiter-api__5_3_2',
        visibility = ['//visibility:public'],
    )

    native.java_import(name = 'junit5_deps___org_junit_jupiter__junit-jupiter-engine__5_3_2',
        jars = ['@junit5_deps___org_junit_jupiter__junit-jupiter-engine__5_3_2//file'],
        deps = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_jupiter__junit_jupiter_api',
            ':junit5_deps___org_junit_platform__junit_platform_engine',
        ],
        exports = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_jupiter__junit_jupiter_api',
            ':junit5_deps___org_junit_platform__junit_platform_engine',
        ],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_junit_jupiter__junit_jupiter_engine',
        actual = 'junit5_deps___org_junit_jupiter__junit-jupiter-engine__5_3_2',
        visibility = ['//visibility:public'],
    )

    native.java_import(name = 'junit5_deps___org_junit_platform__junit-platform-console__1_3_2',
        jars = ['@junit5_deps___org_junit_platform__junit-platform-console__1_3_2//file'],
        deps = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_launcher',
        ],
        exports = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_launcher',
        ],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_junit_platform__junit_platform_console',
        actual = 'junit5_deps___org_junit_platform__junit-platform-console__1_3_2',
        visibility = ['//visibility:public'],
    )

    native.java_import(name = 'junit5_deps___org_opentest4j__opentest4j__1_1_1',
        jars = ['@junit5_deps___org_opentest4j__opentest4j__1_1_1//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_opentest4j__opentest4j',
        actual = 'junit5_deps___org_opentest4j__opentest4j__1_1_1',
        visibility = ['//visibility:public'],
    )

    native.java_import(name = 'junit5_deps___org_apiguardian__apiguardian-api__1_0_0',
        jars = ['@junit5_deps___org_apiguardian__apiguardian-api__1_0_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_apiguardian__apiguardian_api',
        actual = 'junit5_deps___org_apiguardian__apiguardian-api__1_0_0',
        visibility = ['//visibility:public'],
    )

    native.java_import(name = 'junit5_deps___org_junit_platform__junit-platform-engine__1_3_2',
        jars = ['@junit5_deps___org_junit_platform__junit-platform-engine__1_3_2//file'],
        deps = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_commons',
            ':junit5_deps___org_opentest4j__opentest4j',
        ],
        exports = [
            ':junit5_deps___org_apiguardian__apiguardian_api',
            ':junit5_deps___org_junit_platform__junit_platform_commons',
            ':junit5_deps___org_opentest4j__opentest4j',
        ],
        runtime_deps = [],
    )

    native.alias(name = 'junit5_deps___org_junit_platform__junit_platform_engine',
        actual = 'junit5_deps___org_junit_platform__junit-platform-engine__1_3_2',
        visibility = ['//visibility:public'],
    )

