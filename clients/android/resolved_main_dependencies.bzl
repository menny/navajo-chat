# The following dependencies were calculated from:
#
# generate_workspace --repository=https://maven.google.com/ --repository=https://jcenter.bintray.com/ --repository=https://repo1.maven.org/maven2/ --repository=https://jitpack.io/ --artifact=com.google.guava:guava:27.0-android --artifact=com.google.code.findbugs:jsr305:3.0.2 --artifact=com.github.menny.Chauffeur:permissions:6c3a1bc643ae3b3936cd150aeebf6b79e47c8757 --blacklist=com.android.support --rule_prefix=android --macro_prefix=android_main


def generate_android_main_workspace_rules():
  # com.google.guava:guava:bundle:27.0-android got requested version
  native.http_file(
      name = "android___com_google_code_findbugs__jsr305",
      url = "https://jcenter.bintray.com/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar",
  )


  # com.google.guava:guava:bundle:27.0-android
  native.http_file(
      name = "android___com_google_j2objc__j2objc_annotations",
      url = "https://jcenter.bintray.com/com/google/j2objc/j2objc-annotations/1.1/j2objc-annotations-1.1.jar",
  )


  # com.google.guava:guava:bundle:27.0-android
  native.http_file(
      name = "android___com_google_guava__failureaccess",
      url = "https://jcenter.bintray.com/com/google/guava/failureaccess/1.0/failureaccess-1.0.jar",
  )


  # com.google.guava:guava:bundle:27.0-android
  native.http_file(
      name = "android___com_google_guava__listenablefuture",
      url = "https://jcenter.bintray.com/com/google/guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar",
  )


  native.http_file(
      name = "android___com_google_guava__guava",
      url = "https://jcenter.bintray.com/com/google/guava/guava/27.0-android/guava-27.0-android.jar",
  )


  # com.google.guava:guava:bundle:27.0-android
  native.http_file(
      name = "android___org_codehaus_mojo__animal_sniffer_annotations",
      url = "https://jcenter.bintray.com/org/codehaus/mojo/animal-sniffer-annotations/1.17/animal-sniffer-annotations-1.17.jar",
  )


  # com.google.guava:guava:bundle:27.0-android
  native.http_file(
      name = "android___org_checkerframework__checker_compat_qual",
      url = "https://jcenter.bintray.com/org/checkerframework/checker-compat-qual/2.5.2/checker-compat-qual-2.5.2.jar",
  )


  # com.google.guava:guava:bundle:27.0-android
  native.http_file(
      name = "android___com_google_errorprone__error_prone_annotations",
      url = "https://jcenter.bintray.com/com/google/errorprone/error_prone_annotations/2.2.0/error_prone_annotations-2.2.0.jar",
  )




  native.http_file(
      name = "android___com_github_menny_Chauffeur__permissions",
      url = "https://jitpack.io/com/github/menny/Chauffeur/permissions/6c3a1bc643ae3b3936cd150aeebf6b79e47c8757/permissions-6c3a1bc643ae3b3936cd150aeebf6b79e47c8757.aar",
  )


  # com.github.menny.Chauffeur:permissions:aar:6c3a1bc643ae3b3936cd150aeebf6b79e47c8757
  native.http_file(
      name = "android___com_github_menny_Chauffeur__lib",
      url = "https://jitpack.io/com/github/menny/Chauffeur/lib/6c3a1bc643ae3b3936cd150aeebf6b79e47c8757/lib-6c3a1bc643ae3b3936cd150aeebf6b79e47c8757.aar",
  )




def generate_android_main_transitive_dependency_rules():
  native.java_import(
      name = "android___com_google_code_findbugs__jsr305__3_0_2",
      visibility = ["//visibility:public"],
      jars = ["@android___com_google_code_findbugs__jsr305//file"],
  )
  native.alias(
      name = "android___com_google_code_findbugs__jsr305",
      actual = "android___com_google_code_findbugs__jsr305__3_0_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "android___com_google_j2objc__j2objc-annotations__1_1",
      visibility = ["//visibility:public"],
      jars = ["@android___com_google_j2objc__j2objc_annotations//file"],
  )
  native.alias(
      name = "android___com_google_j2objc__j2objc_annotations",
      actual = "android___com_google_j2objc__j2objc-annotations__1_1",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "android___com_google_guava__failureaccess__1_0",
      visibility = ["//visibility:public"],
      jars = ["@android___com_google_guava__failureaccess//file"],
  )
  native.alias(
      name = "android___com_google_guava__failureaccess",
      actual = "android___com_google_guava__failureaccess__1_0",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "android___com_google_guava__listenablefuture__9999_0-empty-to-avoid-conflict-with-guava",
      visibility = ["//visibility:public"],
      jars = ["@android___com_google_guava__listenablefuture//file"],
  )
  native.alias(
      name = "android___com_google_guava__listenablefuture",
      actual = "android___com_google_guava__listenablefuture__9999_0-empty-to-avoid-conflict-with-guava",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "android___com_google_guava__guava__27_0-android",
      visibility = ["//visibility:public"],
      jars = ["@android___com_google_guava__guava//file"],
      deps = [
          ":android___com_google_code_findbugs__jsr305",
          ":android___com_google_guava__listenablefuture",
          ":android___com_google_errorprone__error_prone_annotations",
          ":android___org_codehaus_mojo__animal_sniffer_annotations",
          ":android___com_google_guava__failureaccess",
          ":android___org_checkerframework__checker_compat_qual",
          ":android___com_google_j2objc__j2objc_annotations",
      ],
      exports = [
          ":android___com_google_code_findbugs__jsr305",
          ":android___com_google_guava__listenablefuture",
          ":android___com_google_errorprone__error_prone_annotations",
          ":android___org_codehaus_mojo__animal_sniffer_annotations",
          ":android___com_google_guava__failureaccess",
          ":android___org_checkerframework__checker_compat_qual",
          ":android___com_google_j2objc__j2objc_annotations",
      ],
  )
  native.alias(
      name = "android___com_google_guava__guava",
      actual = "android___com_google_guava__guava__27_0-android",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "android___org_codehaus_mojo__animal-sniffer-annotations__1_17",
      visibility = ["//visibility:public"],
      jars = ["@android___org_codehaus_mojo__animal_sniffer_annotations//file"],
  )
  native.alias(
      name = "android___org_codehaus_mojo__animal_sniffer_annotations",
      actual = "android___org_codehaus_mojo__animal-sniffer-annotations__1_17",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "android___org_checkerframework__checker-compat-qual__2_5_2",
      visibility = ["//visibility:public"],
      jars = ["@android___org_checkerframework__checker_compat_qual//file"],
  )
  native.alias(
      name = "android___org_checkerframework__checker_compat_qual",
      actual = "android___org_checkerframework__checker-compat-qual__2_5_2",
      visibility = ["//visibility:public"],
  )


  native.java_import(
      name = "android___com_google_errorprone__error_prone_annotations__2_2_0",
      visibility = ["//visibility:public"],
      jars = ["@android___com_google_errorprone__error_prone_annotations//file"],
  )
  native.alias(
      name = "android___com_google_errorprone__error_prone_annotations",
      actual = "android___com_google_errorprone__error_prone_annotations__2_2_0",
      visibility = ["//visibility:public"],
  )




  native.aar_import(
      name = "android___com_github_menny_Chauffeur__permissions__6c3a1bc643ae3b3936cd150aeebf6b79e47c8757",
      visibility = ["//visibility:public"],
      aar = "@android___com_github_menny_Chauffeur__permissions//file",
      deps = [
          ":android___com_github_menny_Chauffeur__lib",
      ],
      exports = [
          ":android___com_github_menny_Chauffeur__lib",
      ],
  )
  native.alias(
      name = "android___com_github_menny_Chauffeur__permissions",
      actual = "android___com_github_menny_Chauffeur__permissions__6c3a1bc643ae3b3936cd150aeebf6b79e47c8757",
      visibility = ["//visibility:public"],
  )


  native.aar_import(
      name = "android___com_github_menny_Chauffeur__lib__6c3a1bc643ae3b3936cd150aeebf6b79e47c8757",
      visibility = ["//visibility:public"],
      aar = "@android___com_github_menny_Chauffeur__lib//file",
  )
  native.alias(
      name = "android___com_github_menny_Chauffeur__lib",
      actual = "android___com_github_menny_Chauffeur__lib__6c3a1bc643ae3b3936cd150aeebf6b79e47c8757",
      visibility = ["//visibility:public"],
  )


