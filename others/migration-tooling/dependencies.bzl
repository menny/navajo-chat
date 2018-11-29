# The following dependencies were calculated from:
#
# generate_workspace --repository=https://maven.google.com/ --repository=https://jcenter.bintray.com/ --repository=https://repo1.maven.org/maven2/ --artifact=com.google.guava:guava:20.0 --artifact=com.beust:jcommander:1.72 --artifact=org.eclipse.aether:aether-api:1.1.0 --artifact=org.eclipse.aether:aether-spi:1.1.0 --artifact=org.eclipse.aether:aether-impl:1.1.0 --artifact=org.eclipse.aether:aether-util:1.1.0 --artifact=org.eclipse.aether:aether-transport-http:1.1.0 --artifact=org.eclipse.aether:aether-transport-classpath:1.1.0 --artifact=org.eclipse.aether:aether-transport-wagon:1.1.0 --artifact=org.eclipse.aether:aether-transport-file:1.1.0 --artifact=org.eclipse.aether:aether-connector-basic:1.1.0 --artifact=org.apache.maven:maven-aether-provider:3.2.3 --artifact=org.apache.maven:maven-model:3.2.3 --artifact=org.apache.maven:maven-model-builder:3.2.3 --artifact=org.apache.maven:maven-repository-metadata:3.2.3 --artifact=org.apache.maven:maven-artifact:3.5.0 --artifact=org.codehaus.plexus:plexus-interpolation:1.24 --artifact=org.codehaus.plexus:plexus-utils:3.0.24 --artifact=org.apache.httpcomponents:httpclient:4.5.3 --artifact=org.apache.commons:commons-lang3:jar:3.8.1 --artifact=com.google.code.findbugs:jsr305:3.0.2 --rule_prefix=migration_tools --macro_prefix=migration_tools


def generate_migration_tools_workspace_rules():
  # org.apache.httpcomponents:httpclient:jar:4.5.3
  native.http_file(
      name = "migration_tools___org_apache_httpcomponents__httpcore",
      url = "https://repo1.maven.org/maven2/org/apache/httpcomponents/httpcore/4.4.6/httpcore-4.4.6.jar",
  )


  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_transport_wagon",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-wagon/1.1.0/aether-transport-wagon-1.1.0.jar",
  )


  # org.eclipse.aether:aether-transport-http:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-classpath:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-impl:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-file:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.1.0 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_util",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-util/1.1.0/aether-util-1.1.0.jar",
  )


  # org.apache.maven:maven-aether-provider:jar:3.2.3 got requested version
  # org.apache.maven:maven-model-builder:jar:3.2.3 got requested version
  native.http_file(
      name = "migration_tools___org_apache_maven__maven_model",
      url = "https://repo1.maven.org/maven2/org/apache/maven/maven-model/3.2.3/maven-model-3.2.3.jar",
  )


  # org.apache.maven:maven-aether-provider:jar:3.2.3 got requested version
  native.http_file(
      name = "migration_tools___org_apache_maven__maven_model_builder",
      url = "https://repo1.maven.org/maven2/org/apache/maven/maven-model-builder/3.2.3/maven-model-builder-3.2.3.jar",
  )


  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_transport_http",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-http/1.1.0/aether-transport-http-1.1.0.jar",
  )


  # org.apache.maven:maven-aether-provider:jar:3.2.3 got requested version
  native.http_file(
      name = "migration_tools___org_apache_maven__maven_repository_metadata",
      url = "https://repo1.maven.org/maven2/org/apache/maven/maven-repository-metadata/3.2.3/maven-repository-metadata-3.2.3.jar",
  )


  native.http_file(
      name = "migration_tools___org_apache_maven__maven_aether_provider",
      url = "https://repo1.maven.org/maven2/org/apache/maven/maven-aether-provider/3.2.3/maven-aether-provider-3.2.3.jar",
  )


  # org.eclipse.aether:aether-transport-http:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-spi:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-classpath:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-impl:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-util:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-file:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.1.0 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_api",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-api/1.1.0/aether-api-1.1.0.jar",
  )


  native.http_file(
      name = "migration_tools___org_apache_maven__maven_artifact",
      url = "https://repo1.maven.org/maven2/org/apache/maven/maven-artifact/3.5.0/maven-artifact-3.5.0.jar",
  )


  # org.apache.maven:maven-artifact:jar:3.5.0 wanted version 3.5
  native.http_file(
      name = "migration_tools___org_apache_commons__commons_lang3",
      url = "https://repo1.maven.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.jar",
  )


  native.http_file(
      name = "migration_tools___com_beust__jcommander",
      url = "https://repo1.maven.org/maven2/com/beust/jcommander/1.72/jcommander-1.72.jar",
  )


  # org.apache.httpcomponents:httpclient:jar:4.5.3
  native.http_file(
      name = "migration_tools___commons_logging__commons_logging",
      url = "https://repo1.maven.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar",
  )


  # org.apache.maven:maven-model-builder:jar:3.2.3 wanted version 1.19
  native.http_file(
      name = "migration_tools___org_codehaus_plexus__plexus_interpolation",
      url = "https://repo1.maven.org/maven2/org/codehaus/plexus/plexus-interpolation/1.24/plexus-interpolation-1.24.jar",
  )


  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_connector_basic",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-connector-basic/1.1.0/aether-connector-basic-1.1.0.jar",
  )


  # org.eclipse.aether:aether-transport-http:jar:1.1.0
  native.http_file(
      name = "migration_tools___org_slf4j__jcl_over_slf4j",
      url = "https://repo1.maven.org/maven2/org/slf4j/jcl-over-slf4j/1.6.2/jcl-over-slf4j-1.6.2.jar",
  )


  # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_impl",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-impl/1.1.0/aether-impl-1.1.0.jar",
  )


  native.http_file(
      name = "migration_tools___com_google_code_findbugs__jsr305",
      url = "https://repo1.maven.org/maven2/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar",
  )


  native.http_file(
      name = "migration_tools___com_google_guava__guava",
      url = "https://repo1.maven.org/maven2/com/google/guava/guava/20.0/guava-20.0.jar",
  )


  # org.apache.maven:maven-model-builder:jar:3.2.3 wanted version 3.0.17
  # org.apache.maven.wagon:wagon-provider-api:jar:1.0 wanted version 1.4.2
  # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 3.0.17
  # org.apache.maven:maven-model:jar:3.2.3 wanted version 3.0.17
  # org.apache.maven:maven-artifact:jar:3.5.0 got requested version
  # org.apache.maven:maven-repository-metadata:jar:3.2.3 wanted version 3.0.17
  native.http_file(
      name = "migration_tools___org_codehaus_plexus__plexus_utils",
      url = "https://repo1.maven.org/maven2/org/codehaus/plexus/plexus-utils/3.0.24/plexus-utils-3.0.24.jar",
  )


  # org.slf4j:jcl-over-slf4j:jar:1.6.2
  native.http_file(
      name = "migration_tools___org_slf4j__slf4j_api",
      url = "https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.6.2/slf4j-api-1.6.2.jar",
  )


  # org.eclipse.aether:aether-transport-wagon:jar:1.1.0
  native.http_file(
      name = "migration_tools___org_apache_maven_wagon__wagon_provider_api",
      url = "https://repo1.maven.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0/wagon-provider-api-1.0.jar",
  )


  # org.apache.maven:maven-model-builder:jar:3.2.3 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.2.3
  native.http_file(
      name = "migration_tools___org_codehaus_plexus__plexus_component_annotations",
      url = "https://repo1.maven.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.5/plexus-component-annotations-1.5.5.jar",
  )


  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_transport_classpath",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-classpath/1.1.0/aether-transport-classpath-1.1.0.jar",
  )


  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_transport_file",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-file/1.1.0/aether-transport-file-1.1.0.jar",
  )


  # org.apache.httpcomponents:httpclient:jar:4.5.3
  native.http_file(
      name = "migration_tools___commons_codec__commons_codec",
      url = "https://repo1.maven.org/maven2/commons-codec/commons-codec/1.9/commons-codec-1.9.jar",
  )


  # org.eclipse.aether:aether-transport-http:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-classpath:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-impl:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-connector-basic:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-file:jar:1.1.0 got requested version
  # org.eclipse.aether:aether-transport-wagon:jar:1.1.0 got requested version
  # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
  native.http_file(
      name = "migration_tools___org_eclipse_aether__aether_spi",
      url = "https://repo1.maven.org/maven2/org/eclipse/aether/aether-spi/1.1.0/aether-spi-1.1.0.jar",
  )


  # org.eclipse.aether:aether-transport-http:jar:1.1.0 wanted version 4.3.5
  native.http_file(
      name = "migration_tools___org_apache_httpcomponents__httpclient",
      url = "https://repo1.maven.org/maven2/org/apache/httpcomponents/httpclient/4.5.3/httpclient-4.5.3.jar",
  )






def generate_migration_tools_transitive_dependency_rules():
  native.java_import(
      name = "migration_tools___org_apache_httpcomponents__httpcore__4_4_6",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_httpcomponents__httpcore//file"],
  )
  native.alias(
      name = "migration_tools___org_apache_httpcomponents__httpcore",
      actual = "migration_tools___org_apache_httpcomponents__httpcore__4_4_6",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-transport-wagon__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_transport_wagon//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_apache_maven_wagon__wagon_provider_api",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_apache_maven_wagon__wagon_provider_api",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_transport_wagon",
      actual = "migration_tools___org_eclipse_aether__aether-transport-wagon__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-util__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_util//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_util",
      actual = "migration_tools___org_eclipse_aether__aether-util__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_maven__maven-model__3_2_3",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_maven__maven_model//file"],
      deps = [
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
      exports = [
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
  )
  native.alias(
      name = "migration_tools___org_apache_maven__maven_model",
      actual = "migration_tools___org_apache_maven__maven-model__3_2_3",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_maven__maven-model-builder__3_2_3",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_maven__maven_model_builder//file"],
      deps = [
          ":migration_tools___org_codehaus_plexus__plexus_component_annotations",
          ":migration_tools___org_codehaus_plexus__plexus_utils",
          ":migration_tools___org_codehaus_plexus__plexus_interpolation",
          ":migration_tools___org_apache_maven__maven_model",
      ],
      exports = [
          ":migration_tools___org_codehaus_plexus__plexus_component_annotations",
          ":migration_tools___org_codehaus_plexus__plexus_utils",
          ":migration_tools___org_codehaus_plexus__plexus_interpolation",
          ":migration_tools___org_apache_maven__maven_model",
      ],
  )
  native.alias(
      name = "migration_tools___org_apache_maven__maven_model_builder",
      actual = "migration_tools___org_apache_maven__maven-model-builder__3_2_3",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-transport-http__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_transport_http//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_slf4j__jcl_over_slf4j",
          ":migration_tools___org_apache_httpcomponents__httpclient",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_slf4j__jcl_over_slf4j",
          ":migration_tools___org_apache_httpcomponents__httpclient",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_transport_http",
      actual = "migration_tools___org_eclipse_aether__aether-transport-http__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_maven__maven-repository-metadata__3_2_3",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_maven__maven_repository_metadata//file"],
      deps = [
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
      exports = [
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
  )
  native.alias(
      name = "migration_tools___org_apache_maven__maven_repository_metadata",
      actual = "migration_tools___org_apache_maven__maven-repository-metadata__3_2_3",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_maven__maven-aether-provider__3_2_3",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_maven__maven_aether_provider//file"],
      deps = [
          ":migration_tools___org_apache_maven__maven_model_builder",
          ":migration_tools___org_apache_maven__maven_repository_metadata",
          ":migration_tools___org_eclipse_aether__aether_impl",
          ":migration_tools___org_codehaus_plexus__plexus_component_annotations",
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_codehaus_plexus__plexus_utils",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
          ":migration_tools___org_apache_maven__maven_model",
      ],
      exports = [
          ":migration_tools___org_apache_maven__maven_model_builder",
          ":migration_tools___org_apache_maven__maven_repository_metadata",
          ":migration_tools___org_eclipse_aether__aether_impl",
          ":migration_tools___org_codehaus_plexus__plexus_component_annotations",
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_codehaus_plexus__plexus_utils",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
          ":migration_tools___org_apache_maven__maven_model",
      ],
  )
  native.alias(
      name = "migration_tools___org_apache_maven__maven_aether_provider",
      actual = "migration_tools___org_apache_maven__maven-aether-provider__3_2_3",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-api__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_api//file"],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_api",
      actual = "migration_tools___org_eclipse_aether__aether-api__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_maven__maven-artifact__3_5_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_maven__maven_artifact//file"],
      deps = [
          ":migration_tools___org_apache_commons__commons_lang3",
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
      exports = [
          ":migration_tools___org_apache_commons__commons_lang3",
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
  )
  native.alias(
      name = "migration_tools___org_apache_maven__maven_artifact",
      actual = "migration_tools___org_apache_maven__maven-artifact__3_5_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_commons__commons-lang3__3_8_1",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_commons__commons_lang3//file"],
  )
  native.alias(
      name = "migration_tools___org_apache_commons__commons_lang3",
      actual = "migration_tools___org_apache_commons__commons-lang3__3_8_1",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___com_beust__jcommander__1_72",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___com_beust__jcommander//file"],
  )
  native.alias(
      name = "migration_tools___com_beust__jcommander",
      actual = "migration_tools___com_beust__jcommander__1_72",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___commons-logging__commons-logging__1_2",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___commons_logging__commons_logging//file"],
  )
  native.alias(
      name = "migration_tools___commons_logging__commons_logging",
      actual = "migration_tools___commons-logging__commons-logging__1_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_codehaus_plexus__plexus-interpolation__1_24",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_codehaus_plexus__plexus_interpolation//file"],
  )
  native.alias(
      name = "migration_tools___org_codehaus_plexus__plexus_interpolation",
      actual = "migration_tools___org_codehaus_plexus__plexus-interpolation__1_24",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-connector-basic__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_connector_basic//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_connector_basic",
      actual = "migration_tools___org_eclipse_aether__aether-connector-basic__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_slf4j__jcl-over-slf4j__1_6_2",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_slf4j__jcl_over_slf4j//file"],
      deps = [
          ":migration_tools___org_slf4j__slf4j_api",
      ],
      exports = [
          ":migration_tools___org_slf4j__slf4j_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_slf4j__jcl_over_slf4j",
      actual = "migration_tools___org_slf4j__jcl-over-slf4j__1_6_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-impl__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_impl//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_impl",
      actual = "migration_tools___org_eclipse_aether__aether-impl__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___com_google_code_findbugs__jsr305__3_0_2",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___com_google_code_findbugs__jsr305//file"],
  )
  native.alias(
      name = "migration_tools___com_google_code_findbugs__jsr305",
      actual = "migration_tools___com_google_code_findbugs__jsr305__3_0_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___com_google_guava__guava__20_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___com_google_guava__guava//file"],
  )
  native.alias(
      name = "migration_tools___com_google_guava__guava",
      actual = "migration_tools___com_google_guava__guava__20_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_codehaus_plexus__plexus-utils__3_0_24",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_codehaus_plexus__plexus_utils//file"],
  )
  native.alias(
      name = "migration_tools___org_codehaus_plexus__plexus_utils",
      actual = "migration_tools___org_codehaus_plexus__plexus-utils__3_0_24",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_slf4j__slf4j-api__1_6_2",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_slf4j__slf4j_api//file"],
  )
  native.alias(
      name = "migration_tools___org_slf4j__slf4j_api",
      actual = "migration_tools___org_slf4j__slf4j-api__1_6_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_maven_wagon__wagon-provider-api__1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_maven_wagon__wagon_provider_api//file"],
      deps = [
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
      exports = [
          ":migration_tools___org_codehaus_plexus__plexus_utils",
      ],
  )
  native.alias(
      name = "migration_tools___org_apache_maven_wagon__wagon_provider_api",
      actual = "migration_tools___org_apache_maven_wagon__wagon-provider-api__1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_codehaus_plexus__plexus-component-annotations__1_5_5",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_codehaus_plexus__plexus_component_annotations//file"],
  )
  native.alias(
      name = "migration_tools___org_codehaus_plexus__plexus_component_annotations",
      actual = "migration_tools___org_codehaus_plexus__plexus-component-annotations__1_5_5",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-transport-classpath__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_transport_classpath//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_transport_classpath",
      actual = "migration_tools___org_eclipse_aether__aether-transport-classpath__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-transport-file__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_transport_file//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_util",
          ":migration_tools___org_eclipse_aether__aether_spi",
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_transport_file",
      actual = "migration_tools___org_eclipse_aether__aether-transport-file__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___commons-codec__commons-codec__1_9",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___commons_codec__commons_codec//file"],
  )
  native.alias(
      name = "migration_tools___commons_codec__commons_codec",
      actual = "migration_tools___commons-codec__commons-codec__1_9",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_eclipse_aether__aether-spi__1_1_0",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_eclipse_aether__aether_spi//file"],
      deps = [
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
      exports = [
          ":migration_tools___org_eclipse_aether__aether_api",
      ],
  )
  native.alias(
      name = "migration_tools___org_eclipse_aether__aether_spi",
      actual = "migration_tools___org_eclipse_aether__aether-spi__1_1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "migration_tools___org_apache_httpcomponents__httpclient__4_5_3",
      visibility = ["//visibility:public"],
      jars = ["@migration_tools___org_apache_httpcomponents__httpclient//file"],
      deps = [
          ":migration_tools___org_apache_httpcomponents__httpcore",
          ":migration_tools___commons_codec__commons_codec",
          ":migration_tools___commons_logging__commons_logging",
      ],
      exports = [
          ":migration_tools___org_apache_httpcomponents__httpcore",
          ":migration_tools___commons_codec__commons_codec",
          ":migration_tools___commons_logging__commons_logging",
      ],
  )
  native.alias(
      name = "migration_tools___org_apache_httpcomponents__httpclient",
      actual = "migration_tools___org_apache_httpcomponents__httpclient__4_5_3",
      visibility = ["//visibility:public"],
  )




