# The following dependencies were calculated from:
#
# generate_workspace --repository=https://maven.google.com/ --repository=https://jcenter.bintray.com/ --repository=https://repo1.maven.org/maven2/ --artifact=org.junit.jupiter:junit-jupiter-api:5.3.2 --artifact=org.junit.jupiter:junit-jupiter-engine:5.3.2 --artifact=org.junit.jupiter:junit-jupiter-params:5.3.2 --artifact=org.junit.platform:junit-platform-commons:1.3.2 --artifact=org.junit.platform:junit-platform-console:1.3.2 --artifact=org.junit.platform:junit-platform-engine:1.3.2 --artifact=org.junit.platform:junit-platform-launcher:1.3.2 --artifact=org.junit.platform:junit-platform-suite-api:1.3.2 --artifact=org.apiguardian:apiguardian-api:1.0.0 --artifact=org.opentest4j:opentest4j:1.1.1 --rule_prefix=junit5 --macro_prefix=junit5_deps


load('@bazel_tools//tools/build_defs/repo:http.bzl', 'http_file')

def generate_junit5_deps_workspace_rules():
  # org.junit.platform:junit-platform-console:jar:1.3.2 got requested version
  http_file(
      name = "junit5___org_junit_platform__junit_platform_launcher",
      urls = ["https://jcenter.bintray.com/org/junit/platform/junit-platform-launcher/1.3.2/junit-platform-launcher-1.3.2.jar"],
      downloaded_file_path = "junit-platform-launcher-1.3.2.jar",
  )


  http_file(
      name = "junit5___org_junit_jupiter__junit_jupiter_params",
      urls = ["https://jcenter.bintray.com/org/junit/jupiter/junit-jupiter-params/5.3.2/junit-jupiter-params-5.3.2.jar"],
      downloaded_file_path = "junit-jupiter-params-5.3.2.jar",
  )


  # org.junit.platform:junit-platform-suite-api:jar:1.3.2 got requested version
  # org.junit.platform:junit-platform-engine:jar:1.3.2 got requested version
  # org.junit.jupiter:junit-jupiter-api:jar:5.3.2 got requested version
  http_file(
      name = "junit5___org_junit_platform__junit_platform_commons",
      urls = ["https://jcenter.bintray.com/org/junit/platform/junit-platform-commons/1.3.2/junit-platform-commons-1.3.2.jar"],
      downloaded_file_path = "junit-platform-commons-1.3.2.jar",
  )


  http_file(
      name = "junit5___org_junit_platform__junit_platform_suite_api",
      urls = ["https://jcenter.bintray.com/org/junit/platform/junit-platform-suite-api/1.3.2/junit-platform-suite-api-1.3.2.jar"],
      downloaded_file_path = "junit-platform-suite-api-1.3.2.jar",
  )


  # org.junit.jupiter:junit-jupiter-params:jar:5.3.2 got requested version
  # org.junit.jupiter:junit-jupiter-engine:jar:5.3.2 got requested version
  http_file(
      name = "junit5___org_junit_jupiter__junit_jupiter_api",
      urls = ["https://jcenter.bintray.com/org/junit/jupiter/junit-jupiter-api/5.3.2/junit-jupiter-api-5.3.2.jar"],
      downloaded_file_path = "junit-jupiter-api-5.3.2.jar",
  )


  http_file(
      name = "junit5___org_junit_jupiter__junit_jupiter_engine",
      urls = ["https://jcenter.bintray.com/org/junit/jupiter/junit-jupiter-engine/5.3.2/junit-jupiter-engine-5.3.2.jar"],
      downloaded_file_path = "junit-jupiter-engine-5.3.2.jar",
  )


  http_file(
      name = "junit5___org_junit_platform__junit_platform_console",
      urls = ["https://jcenter.bintray.com/org/junit/platform/junit-platform-console/1.3.2/junit-platform-console-1.3.2.jar"],
      downloaded_file_path = "junit-platform-console-1.3.2.jar",
  )


  # org.junit.platform:junit-platform-engine:jar:1.3.2 got requested version
  # org.junit.jupiter:junit-jupiter-api:jar:5.3.2 got requested version
  http_file(
      name = "junit5___org_opentest4j__opentest4j",
      urls = ["https://jcenter.bintray.com/org/opentest4j/opentest4j/1.1.1/opentest4j-1.1.1.jar"],
      downloaded_file_path = "opentest4j-1.1.1.jar",
  )


  # org.junit.platform:junit-platform-suite-api:jar:1.3.2 got requested version
  # org.junit.platform:junit-platform-commons:jar:1.3.2 got requested version
  # org.junit.jupiter:junit-jupiter-params:jar:5.3.2 got requested version
  # org.junit.platform:junit-platform-launcher:jar:1.3.2 got requested version
  # org.junit.platform:junit-platform-console:jar:1.3.2 got requested version
  # org.junit.platform:junit-platform-engine:jar:1.3.2 got requested version
  # org.junit.jupiter:junit-jupiter-api:jar:5.3.2 got requested version
  # org.junit.jupiter:junit-jupiter-engine:jar:5.3.2 got requested version
  http_file(
      name = "junit5___org_apiguardian__apiguardian_api",
      urls = ["https://jcenter.bintray.com/org/apiguardian/apiguardian-api/1.0.0/apiguardian-api-1.0.0.jar"],
      downloaded_file_path = "apiguardian-api-1.0.0.jar",
  )


  # org.junit.platform:junit-platform-launcher:jar:1.3.2 got requested version
  # org.junit.jupiter:junit-jupiter-engine:jar:5.3.2 got requested version
  http_file(
      name = "junit5___org_junit_platform__junit_platform_engine",
      urls = ["https://jcenter.bintray.com/org/junit/platform/junit-platform-engine/1.3.2/junit-platform-engine-1.3.2.jar"],
      downloaded_file_path = "junit-platform-engine-1.3.2.jar",
  )






def generate_junit5_deps_transitive_dependency_rules():
  native.java_import(
      name = "junit5___org_junit_platform__junit-platform-launcher__1_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_platform__junit_platform_launcher//file"],
      deps = [
          ":junit5___org_junit_platform__junit_platform_engine",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
      exports = [
          ":junit5___org_junit_platform__junit_platform_engine",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
  )
  native.alias(
      name = "junit5___org_junit_platform__junit_platform_launcher",
      actual = "junit5___org_junit_platform__junit-platform-launcher__1_3_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_junit_jupiter__junit-jupiter-params__5_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_jupiter__junit_jupiter_params//file"],
      deps = [
          ":junit5___org_junit_jupiter__junit_jupiter_api",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
      exports = [
          ":junit5___org_junit_jupiter__junit_jupiter_api",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
  )
  native.alias(
      name = "junit5___org_junit_jupiter__junit_jupiter_params",
      actual = "junit5___org_junit_jupiter__junit-jupiter-params__5_3_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_junit_platform__junit-platform-commons__1_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_platform__junit_platform_commons//file"],
      deps = [
          ":junit5___org_apiguardian__apiguardian_api",
      ],
      exports = [
          ":junit5___org_apiguardian__apiguardian_api",
      ],
  )
  native.alias(
      name = "junit5___org_junit_platform__junit_platform_commons",
      actual = "junit5___org_junit_platform__junit-platform-commons__1_3_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_junit_platform__junit-platform-suite-api__1_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_platform__junit_platform_suite_api//file"],
      deps = [
          ":junit5___org_junit_platform__junit_platform_commons",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
      exports = [
          ":junit5___org_junit_platform__junit_platform_commons",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
  )
  native.alias(
      name = "junit5___org_junit_platform__junit_platform_suite_api",
      actual = "junit5___org_junit_platform__junit-platform-suite-api__1_3_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_junit_jupiter__junit-jupiter-api__5_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_jupiter__junit_jupiter_api//file"],
      deps = [
          ":junit5___org_junit_platform__junit_platform_commons",
          ":junit5___org_opentest4j__opentest4j",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
      exports = [
          ":junit5___org_junit_platform__junit_platform_commons",
          ":junit5___org_opentest4j__opentest4j",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
  )
  native.alias(
      name = "junit5___org_junit_jupiter__junit_jupiter_api",
      actual = "junit5___org_junit_jupiter__junit-jupiter-api__5_3_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_junit_jupiter__junit-jupiter-engine__5_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_jupiter__junit_jupiter_engine//file"],
      deps = [
          ":junit5___org_junit_platform__junit_platform_engine",
          ":junit5___org_junit_jupiter__junit_jupiter_api",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
      exports = [
          ":junit5___org_junit_platform__junit_platform_engine",
          ":junit5___org_junit_jupiter__junit_jupiter_api",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
  )
  native.alias(
      name = "junit5___org_junit_jupiter__junit_jupiter_engine",
      actual = "junit5___org_junit_jupiter__junit-jupiter-engine__5_3_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_junit_platform__junit-platform-console__1_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_platform__junit_platform_console//file"],
      deps = [
          ":junit5___org_apiguardian__apiguardian_api",
          ":junit5___org_junit_platform__junit_platform_launcher",
      ],
      exports = [
          ":junit5___org_apiguardian__apiguardian_api",
          ":junit5___org_junit_platform__junit_platform_launcher",
      ],
  )
  native.alias(
      name = "junit5___org_junit_platform__junit_platform_console",
      actual = "junit5___org_junit_platform__junit-platform-console__1_3_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_opentest4j__opentest4j__1_1_1",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_opentest4j__opentest4j//file"],
  )
  native.alias(
      name = "junit5___org_opentest4j__opentest4j",
      actual = "junit5___org_opentest4j__opentest4j__1_1_1",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_apiguardian__apiguardian-api__1_0_0",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_apiguardian__apiguardian_api//file"],
  )
  native.alias(
      name = "junit5___org_apiguardian__apiguardian_api",
      actual = "junit5___org_apiguardian__apiguardian-api__1_0_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "junit5___org_junit_platform__junit-platform-engine__1_3_2",
      visibility = ["//visibility:public"],
      jars = ["@junit5___org_junit_platform__junit_platform_engine//file"],
      deps = [
          ":junit5___org_junit_platform__junit_platform_commons",
          ":junit5___org_opentest4j__opentest4j",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
      exports = [
          ":junit5___org_junit_platform__junit_platform_commons",
          ":junit5___org_opentest4j__opentest4j",
          ":junit5___org_apiguardian__apiguardian_api",
      ],
  )
  native.alias(
      name = "junit5___org_junit_platform__junit_platform_engine",
      actual = "junit5___org_junit_platform__junit-platform-engine__1_3_2",
      visibility = ["//visibility:public"],
  )




