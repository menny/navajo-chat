# The following dependencies were calculated from:
#
# generate_workspace --repository=https://maven.google.com/ --repository=https://jcenter.bintray.com/ --repository=https://repo1.maven.org/maven2/ --repository=https://jitpack.io/ --artifact=com.google.guava:guava:27.0-android --artifact=com.google.code.findbugs:jsr305:3.0.2 --artifact=javax.annotation:jsr250-api:1.0 --artifact=com.github.menny.Chauffeur:permissions:90e7032 --artifact=androidx.fragment:fragment:1.1.0-alpha01 --artifact=androidx.appcompat:appcompat:1.0.2 --artifact=androidx.annotation:annotation:1.0.0 --artifact=io.reactivex.rxjava2:rxjava:2.2.4 --artifact=io.reactivex.rxjava2:rxandroid:2.1.0 --artifact=com.spotify.mobius:mobius-core:1.2.0 --artifact=com.spotify.mobius:mobius-rx2:1.2.0 --artifact=com.spotify.mobius:mobius-android:1.2.0 --artifact=com.spotify.mobius:mobius-extras:1.2.0 --artifact=io.mockk:mockk:1.8.13.kotlin13 --blacklist=com.android.support --rule_prefix=android --macro_prefix=android_main


# Loading a drop-in replacement for native.http_file
load('@bazel_tools//tools/build_defs/repo:http.bzl', 'http_file')

# Repository rules macro to be run in the WORKSPACE file.
def generate_android_main_workspace_rules():
    # androidx.legacy:legacy-support-core-utils:aar:1.0.0
    http_file(name = 'android___androidx_localbroadcastmanager__localbroadcastmanager__1_0_0',
        urls = ['https://maven.google.com/androidx/localbroadcastmanager/localbroadcastmanager/1.0.0/localbroadcastmanager-1.0.0.aar'],
        downloaded_file_path = 'localbroadcastmanager-1.0.0.aar',
    )


    # androidx.loader:loader:aar:1.0.0
    http_file(name = 'android___androidx_lifecycle__lifecycle-livedata__2_0_0',
        urls = ['https://maven.google.com/androidx/lifecycle/lifecycle-livedata/2.0.0/lifecycle-livedata-2.0.0.aar'],
        downloaded_file_path = 'lifecycle-livedata-2.0.0.aar',
    )


    # com.google.guava:guava:bundle:27.0-android
    http_file(name = 'android___com_google_guava__failureaccess__1_0',
        urls = ['https://jcenter.bintray.com/com/google/guava/failureaccess/1.0/failureaccess-1.0.jar'],
        downloaded_file_path = 'failureaccess-1.0.jar',
    )


    # androidx.legacy:legacy-support-core-ui:aar:1.0.0
    http_file(name = 'android___androidx_coordinatorlayout__coordinatorlayout__1_0_0',
        urls = ['https://maven.google.com/androidx/coordinatorlayout/coordinatorlayout/1.0.0/coordinatorlayout-1.0.0.aar'],
        downloaded_file_path = 'coordinatorlayout-1.0.0.aar',
    )


    # io.mockk:mockk-agent-jvm:jar:1.8.13.kotlin13
    # io.mockk:mockk-agent-common:jar:1.8.13.kotlin13 got requested version
    http_file(name = 'android___io_mockk__mockk-agent-api__1_8_13_kotlin13',
        urls = ['https://jcenter.bintray.com/io/mockk/mockk-agent-api/1.8.13.kotlin13/mockk-agent-api-1.8.13.kotlin13.jar'],
        downloaded_file_path = 'mockk-agent-api-1.8.13.kotlin13.jar',
    )


    http_file(name = 'android___io_mockk__mockk__1_8_13_kotlin13',
        urls = ['https://jcenter.bintray.com/io/mockk/mockk/1.8.13.kotlin13/mockk-1.8.13.kotlin13.jar'],
        downloaded_file_path = 'mockk-1.8.13.kotlin13.jar',
    )


    # androidx.appcompat:appcompat:aar:1.0.2
    # androidx.vectordrawable:vectordrawable-animated:aar:1.0.0 wanted version 1.0.0
    http_file(name = 'android___androidx_vectordrawable__vectordrawable__1_0_1',
        urls = ['https://maven.google.com/androidx/vectordrawable/vectordrawable/1.0.1/vectordrawable-1.0.1.aar'],
        downloaded_file_path = 'vectordrawable-1.0.1.aar',
    )


    # com.google.guava:guava:bundle:27.0-android
    http_file(name = 'android___com_google_errorprone__error_prone_annotations__2_2_0',
        urls = ['https://jcenter.bintray.com/com/google/errorprone/error_prone_annotations/2.2.0/error_prone_annotations-2.2.0.jar'],
        downloaded_file_path = 'error_prone_annotations-2.2.0.jar',
    )


    http_file(name = 'android___com_spotify_mobius__mobius-extras__1_2_0',
        urls = ['https://jcenter.bintray.com/com/spotify/mobius/mobius-extras/1.2.0/mobius-extras-1.2.0.jar'],
        downloaded_file_path = 'mobius-extras-1.2.0.jar',
    )


    # androidx.core:core:aar:1.1.0-alpha01
    http_file(name = 'android___androidx_versionedparcelable__versionedparcelable__1_1_0-alpha01',
        urls = ['https://maven.google.com/androidx/versionedparcelable/versionedparcelable/1.1.0-alpha01/versionedparcelable-1.1.0-alpha01.aar'],
        downloaded_file_path = 'versionedparcelable-1.1.0-alpha01.aar',
    )


    # androidx.swiperefreshlayout:swiperefreshlayout:aar:1.0.0 got requested version
    # androidx.legacy:legacy-support-core-ui:aar:1.0.0
    http_file(name = 'android___androidx_interpolator__interpolator__1_0_0',
        urls = ['https://maven.google.com/androidx/interpolator/interpolator/1.0.0/interpolator-1.0.0.aar'],
        downloaded_file_path = 'interpolator-1.0.0.aar',
    )


    # io.mockk:mockk:jar:1.8.13.kotlin13
    http_file(name = 'android___io_mockk__mockk-common__1_8_13_kotlin13',
        urls = ['https://jcenter.bintray.com/io/mockk/mockk-common/1.8.13.kotlin13/mockk-common-1.8.13.kotlin13.jar'],
        downloaded_file_path = 'mockk-common-1.8.13.kotlin13.jar',
    )


    # com.github.menny.Chauffeur:lib:aar:90e7032 got requested version
    # com.github.menny.Chauffeur:permissions:aar:90e7032 got requested version
    # androidx.appcompat:appcompat:aar:1.0.2 wanted version 1.0.0
    http_file(name = 'android___androidx_fragment__fragment__1_1_0-alpha01',
        urls = ['https://maven.google.com/androidx/fragment/fragment/1.1.0-alpha01/fragment-1.1.0-alpha01.aar'],
        downloaded_file_path = 'fragment-1.1.0-alpha01.aar',
    )


    # com.kohlschutter.junixsocket:junixsocket-common:jar:2.0.4
    # com.kohlschutter.junixsocket:junixsocket-native-common:jar:2.0.4 got requested version
    http_file(name = 'android___log4j__log4j__1_2_17',
        urls = ['https://jcenter.bintray.com/log4j/log4j/1.2.17/log4j-1.2.17.jar'],
        downloaded_file_path = 'log4j-1.2.17.jar',
    )


    http_file(name = 'android___com_spotify_mobius__mobius-android__1_2_0',
        urls = ['https://jcenter.bintray.com/com/spotify/mobius/mobius-android/1.2.0/mobius-android-1.2.0.aar'],
        downloaded_file_path = 'mobius-android-1.2.0.aar',
    )


    # androidx.legacy:legacy-support-core-ui:aar:1.0.0
    http_file(name = 'android___androidx_asynclayoutinflater__asynclayoutinflater__1_0_0',
        urls = ['https://maven.google.com/androidx/asynclayoutinflater/asynclayoutinflater/1.0.0/asynclayoutinflater-1.0.0.aar'],
        downloaded_file_path = 'asynclayoutinflater-1.0.0.aar',
    )


    # com.google.guava:guava:bundle:27.0-android
    http_file(name = 'android___com_google_guava__listenablefuture__9999_0-empty-to-avoid-conflict-with-guava',
        urls = ['https://jcenter.bintray.com/com/google/guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar'],
        downloaded_file_path = 'listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar',
    )


    http_file(name = 'android___com_google_guava__guava__27_0-android',
        urls = ['https://jcenter.bintray.com/com/google/guava/guava/27.0-android/guava-27.0-android.jar'],
        downloaded_file_path = 'guava-27.0-android.jar',
    )


    # androidx.lifecycle:lifecycle-livedata:aar:2.0.0
    http_file(name = 'android___androidx_lifecycle__lifecycle-livedata-core__2_0_0',
        urls = ['https://maven.google.com/androidx/lifecycle/lifecycle-livedata-core/2.0.0/lifecycle-livedata-core-2.0.0.aar'],
        downloaded_file_path = 'lifecycle-livedata-core-2.0.0.aar',
    )


    # androidx.appcompat:appcompat:aar:1.0.2
    # androidx.legacy:legacy-support-core-ui:aar:1.0.0 got requested version
    http_file(name = 'android___androidx_cursoradapter__cursoradapter__1_0_0',
        urls = ['https://maven.google.com/androidx/cursoradapter/cursoradapter/1.0.0/cursoradapter-1.0.0.aar'],
        downloaded_file_path = 'cursoradapter-1.0.0.aar',
    )


    # androidx.legacy:legacy-support-core-ui:aar:1.0.0
    http_file(name = 'android___androidx_swiperefreshlayout__swiperefreshlayout__1_0_0',
        urls = ['https://maven.google.com/androidx/swiperefreshlayout/swiperefreshlayout/1.0.0/swiperefreshlayout-1.0.0.aar'],
        downloaded_file_path = 'swiperefreshlayout-1.0.0.aar',
    )


    # com.spotify.mobius:mobius-android:aar:1.2.0 got requested version
    # com.spotify.mobius:mobius-extras:jar:1.2.0 got requested version
    # com.spotify.mobius:mobius-core:jar:1.2.0
    http_file(name = 'android___org_slf4j__slf4j-api__1_7_25',
        urls = ['https://jcenter.bintray.com/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar'],
        downloaded_file_path = 'slf4j-api-1.7.25.jar',
    )


    http_file(name = 'android___io_reactivex_rxjava2__rxandroid__2_1_0',
        urls = ['https://jcenter.bintray.com/io/reactivex/rxjava2/rxandroid/2.1.0/rxandroid-2.1.0.aar'],
        downloaded_file_path = 'rxandroid-2.1.0.aar',
    )


    # androidx.appcompat:appcompat:aar:1.0.2
    http_file(name = 'android___androidx_vectordrawable__vectordrawable-animated__1_0_0',
        urls = ['https://maven.google.com/androidx/vectordrawable/vectordrawable-animated/1.0.0/vectordrawable-animated-1.0.0.aar'],
        downloaded_file_path = 'vectordrawable-animated-1.0.0.aar',
    )


    http_file(name = 'android___javax_annotation__jsr250-api__1_0',
        urls = ['https://jcenter.bintray.com/javax/annotation/jsr250-api/1.0/jsr250-api-1.0.jar'],
        downloaded_file_path = 'jsr250-api-1.0.jar',
    )


    # net.bytebuddy:byte-buddy-agent:jar:1.8.22 got requested version
    # net.bytebuddy:byte-buddy:jar:1.8.22
    http_file(name = 'android___com_google_code_findbugs__findbugs-annotations__3_0_1',
        urls = ['https://jcenter.bintray.com/com/google/code/findbugs/findbugs-annotations/3.0.1/findbugs-annotations-3.0.1.jar'],
        downloaded_file_path = 'findbugs-annotations-3.0.1.jar',
    )


    # io.mockk:mockk:jar:1.8.13.kotlin13
    http_file(name = 'android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13',
        urls = ['https://jcenter.bintray.com/io/mockk/mockk-agent-jvm/1.8.13.kotlin13/mockk-agent-jvm-1.8.13.kotlin13.jar'],
        downloaded_file_path = 'mockk-agent-jvm-1.8.13.kotlin13.jar',
    )


    # com.github.menny.Chauffeur:permissions:aar:90e7032
    http_file(name = 'android___com_github_menny_Chauffeur__lib__90e7032',
        urls = ['https://jitpack.io/com/github/menny/Chauffeur/lib/90e7032/lib-90e7032.aar'],
        downloaded_file_path = 'lib-90e7032.aar',
    )


    http_file(name = 'android___com_spotify_mobius__mobius-rx2__1_2_0',
        urls = ['https://jcenter.bintray.com/com/spotify/mobius/mobius-rx2/1.2.0/mobius-rx2-1.2.0.jar'],
        downloaded_file_path = 'mobius-rx2-1.2.0.jar',
    )


    # io.mockk:mockk:jar:1.8.13.kotlin13
    http_file(name = 'android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13',
        urls = ['https://jcenter.bintray.com/io/mockk/mockk-dsl-jvm/1.8.13.kotlin13/mockk-dsl-jvm-1.8.13.kotlin13.jar'],
        downloaded_file_path = 'mockk-dsl-jvm-1.8.13.kotlin13.jar',
    )


    # androidx.activity:activity:aar:1.0.0-alpha01 got requested version
    # androidx.legacy:legacy-support-core-utils:aar:1.0.0 got requested version
    # androidx.appcompat:appcompat:aar:1.0.2 got requested version
    # androidx.lifecycle:lifecycle-viewmodel:aar:2.0.0 got requested version
    # androidx.vectordrawable:vectordrawable:aar:1.0.1 got requested version
    # com.github.menny.Chauffeur:lib:aar:90e7032 got requested version
    # androidx.asynclayoutinflater:asynclayoutinflater:aar:1.0.0 got requested version
    # androidx.coordinatorlayout:coordinatorlayout:aar:1.0.0 got requested version
    # androidx.collection:collection:jar:1.0.0 got requested version
    # androidx.viewpager:viewpager:aar:1.0.0 got requested version
    # androidx.lifecycle:lifecycle-runtime:aar:2.0.0 got requested version
    # androidx.customview:customview:aar:1.0.0 got requested version
    # androidx.cursoradapter:cursoradapter:aar:1.0.0 got requested version
    # androidx.core:core:aar:1.1.0-alpha01 got requested version
    # androidx.loader:loader:aar:1.0.0 got requested version
    # androidx.slidingpanelayout:slidingpanelayout:aar:1.0.0 got requested version
    # androidx.versionedparcelable:versionedparcelable:aar:1.1.0-alpha01 got requested version
    # androidx.fragment:fragment:aar:1.1.0-alpha01 got requested version
    # androidx.swiperefreshlayout:swiperefreshlayout:aar:1.0.0 got requested version
    # androidx.arch.core:core-common:jar:2.0.0 got requested version
    # androidx.documentfile:documentfile:aar:1.0.0 got requested version
    # com.github.menny.Chauffeur:permissions:aar:90e7032 got requested version
    # androidx.print:print:aar:1.0.0 got requested version
    # androidx.interpolator:interpolator:aar:1.0.0 got requested version
    # androidx.legacy:legacy-support-core-ui:aar:1.0.0 got requested version
    # androidx.drawerlayout:drawerlayout:aar:1.0.0 got requested version
    # androidx.arch.core:core-runtime:aar:2.0.0 got requested version
    # androidx.lifecycle:lifecycle-common:jar:2.0.0 got requested version
    # androidx.localbroadcastmanager:localbroadcastmanager:aar:1.0.0 got requested version
    http_file(name = 'android___androidx_annotation__annotation__1_0_0',
        urls = ['https://maven.google.com/androidx/annotation/annotation/1.0.0/annotation-1.0.0.jar'],
        downloaded_file_path = 'annotation-1.0.0.jar',
    )


    # androidx.fragment:fragment:aar:1.1.0-alpha01
    http_file(name = 'android___androidx_activity__activity__1_0_0-alpha01',
        urls = ['https://maven.google.com/androidx/activity/activity/1.0.0-alpha01/activity-1.0.0-alpha01.aar'],
        downloaded_file_path = 'activity-1.0.0-alpha01.aar',
    )


    # io.mockk:mockk-common:jar:1.8.13.kotlin13
    # io.mockk:mockk-dsl-jvm:jar:1.8.13.kotlin13 got requested version
    http_file(name = 'android___io_mockk__mockk-dsl__1_8_13_kotlin13',
        urls = ['https://jcenter.bintray.com/io/mockk/mockk-dsl/1.8.13.kotlin13/mockk-dsl-1.8.13.kotlin13.jar'],
        downloaded_file_path = 'mockk-dsl-1.8.13.kotlin13.jar',
    )


    # androidx.legacy:legacy-support-core-utils:aar:1.0.0
    http_file(name = 'android___androidx_print__print__1_0_0',
        urls = ['https://maven.google.com/androidx/print/print/1.0.0/print-1.0.0.aar'],
        downloaded_file_path = 'print-1.0.0.aar',
    )


    # androidx.legacy:legacy-support-core-ui:aar:1.0.0
    http_file(name = 'android___androidx_slidingpanelayout__slidingpanelayout__1_0_0',
        urls = ['https://maven.google.com/androidx/slidingpanelayout/slidingpanelayout/1.0.0/slidingpanelayout-1.0.0.aar'],
        downloaded_file_path = 'slidingpanelayout-1.0.0.aar',
    )


    # com.kohlschutter.junixsocket:junixsocket-native-common:jar:2.0.4
    http_file(name = 'android___com_kohlschutter_junixsocket__junixsocket-common__2_0_4',
        urls = ['https://jcenter.bintray.com/com/kohlschutter/junixsocket/junixsocket-common/2.0.4/junixsocket-common-2.0.4.jar'],
        downloaded_file_path = 'junixsocket-common-2.0.4.jar',
    )


    # io.reactivex.rxjava2:rxandroid:aar:2.1.0 wanted version 2.2.0
    # com.spotify.mobius:mobius-rx2:jar:1.2.0 wanted version 2.1.9
    http_file(name = 'android___io_reactivex_rxjava2__rxjava__2_2_4',
        urls = ['https://jcenter.bintray.com/io/reactivex/rxjava2/rxjava/2.2.4/rxjava-2.2.4.jar'],
        downloaded_file_path = 'rxjava-2.2.4.jar',
    )


    # androidx.fragment:fragment:aar:1.1.0-alpha01
    # androidx.legacy:legacy-support-core-ui:aar:1.0.0 got requested version
    http_file(name = 'android___androidx_viewpager__viewpager__1_0_0',
        urls = ['https://maven.google.com/androidx/viewpager/viewpager/1.0.0/viewpager-1.0.0.aar'],
        downloaded_file_path = 'viewpager-1.0.0.aar',
    )


    # com.google.guava:guava:bundle:27.0-android
    http_file(name = 'android___org_codehaus_mojo__animal-sniffer-annotations__1_17',
        urls = ['https://jcenter.bintray.com/org/codehaus/mojo/animal-sniffer-annotations/1.17/animal-sniffer-annotations-1.17.jar'],
        downloaded_file_path = 'animal-sniffer-annotations-1.17.jar',
    )


    # androidx.lifecycle:lifecycle-livedata:aar:2.0.0
    # androidx.lifecycle:lifecycle-livedata-core:aar:2.0.0 got requested version
    http_file(name = 'android___androidx_arch_core__core-runtime__2_0_0',
        urls = ['https://maven.google.com/androidx/arch/core/core-runtime/2.0.0/core-runtime-2.0.0.aar'],
        downloaded_file_path = 'core-runtime-2.0.0.aar',
    )


    # androidx.core:core:aar:1.1.0-alpha01
    # androidx.versionedparcelable:versionedparcelable:aar:1.1.0-alpha01 got requested version
    # androidx.appcompat:appcompat:aar:1.0.2 got requested version
    http_file(name = 'android___androidx_collection__collection__1_0_0',
        urls = ['https://maven.google.com/androidx/collection/collection/1.0.0/collection-1.0.0.jar'],
        downloaded_file_path = 'collection-1.0.0.jar',
    )


    # com.kohlschutter.junixsocket:junixsocket-native-common:jar:2.0.4
    http_file(name = 'android___org_scijava__native-lib-loader__2_0_2',
        urls = ['https://jcenter.bintray.com/org/scijava/native-lib-loader/2.0.2/native-lib-loader-2.0.2.jar'],
        downloaded_file_path = 'native-lib-loader-2.0.2.jar',
    )


    # com.spotify.mobius:mobius-android:aar:1.2.0 got requested version
    # com.spotify.mobius:mobius-extras:jar:1.2.0 got requested version
    # com.spotify.mobius:mobius-rx2:jar:1.2.0 got requested version
    http_file(name = 'android___com_spotify_mobius__mobius-core__1_2_0',
        urls = ['https://jcenter.bintray.com/com/spotify/mobius/mobius-core/1.2.0/mobius-core-1.2.0.jar'],
        downloaded_file_path = 'mobius-core-1.2.0.jar',
    )


    # androidx.lifecycle:lifecycle-runtime:aar:2.0.0
    # androidx.lifecycle:lifecycle-livedata-core:aar:2.0.0 got requested version
    http_file(name = 'android___androidx_lifecycle__lifecycle-common__2_0_0',
        urls = ['https://maven.google.com/androidx/lifecycle/lifecycle-common/2.0.0/lifecycle-common-2.0.0.jar'],
        downloaded_file_path = 'lifecycle-common-2.0.0.jar',
    )


    # log4j:log4j:bundle:1.2.17
    http_file(name = 'android___org_apache_openejb__javaee-api__5_0-2',
        urls = ['https://jcenter.bintray.com/org/apache/openejb/javaee-api/5.0-2/javaee-api-5.0-2.jar'],
        downloaded_file_path = 'javaee-api-5.0-2.jar',
    )


    # io.mockk:mockk-agent-jvm:jar:1.8.13.kotlin13
    http_file(name = 'android___io_mockk__mockk-agent-common__1_8_13_kotlin13',
        urls = ['https://jcenter.bintray.com/io/mockk/mockk-agent-common/1.8.13.kotlin13/mockk-agent-common-1.8.13.kotlin13.jar'],
        downloaded_file_path = 'mockk-agent-common-1.8.13.kotlin13.jar',
    )


    # androidx.legacy:legacy-support-core-utils:aar:1.0.0 wanted version 1.0.0
    # androidx.drawerlayout:drawerlayout:aar:1.0.0 wanted version 1.0.0
    # androidx.activity:activity:aar:1.0.0-alpha01 wanted version 1.0.0
    # androidx.viewpager:viewpager:aar:1.0.0 wanted version 1.0.0
    # androidx.loader:loader:aar:1.0.0 wanted version 1.0.0
    # androidx.slidingpanelayout:slidingpanelayout:aar:1.0.0 wanted version 1.0.0
    # androidx.vectordrawable:vectordrawable:aar:1.0.1 wanted version 1.0.0
    # androidx.swiperefreshlayout:swiperefreshlayout:aar:1.0.0 wanted version 1.0.0
    # androidx.coordinatorlayout:coordinatorlayout:aar:1.0.0 wanted version 1.0.0
    # androidx.asynclayoutinflater:asynclayoutinflater:aar:1.0.0 wanted version 1.0.0
    # androidx.customview:customview:aar:1.0.0 wanted version 1.0.0
    # androidx.fragment:fragment:aar:1.1.0-alpha01
    # androidx.appcompat:appcompat:aar:1.0.2 wanted version 1.0.1
    # androidx.legacy:legacy-support-core-ui:aar:1.0.0 wanted version 1.0.0
    http_file(name = 'android___androidx_core__core__1_1_0-alpha01',
        urls = ['https://maven.google.com/androidx/core/core/1.1.0-alpha01/core-1.1.0-alpha01.aar'],
        downloaded_file_path = 'core-1.1.0-alpha01.aar',
    )


    # androidx.legacy:legacy-support-core-utils:aar:1.0.0
    http_file(name = 'android___androidx_documentfile__documentfile__1_0_0',
        urls = ['https://maven.google.com/androidx/documentfile/documentfile/1.0.0/documentfile-1.0.0.aar'],
        downloaded_file_path = 'documentfile-1.0.0.aar',
    )


    # io.mockk:mockk-agent-jvm:jar:1.8.13.kotlin13
    http_file(name = 'android___net_bytebuddy__byte-buddy__1_8_22',
        urls = ['https://jcenter.bintray.com/net/bytebuddy/byte-buddy/1.8.22/byte-buddy-1.8.22.jar'],
        downloaded_file_path = 'byte-buddy-1.8.22.jar',
    )


    # io.mockk:mockk-agent-jvm:jar:1.8.13.kotlin13
    http_file(name = 'android___org_objenesis__objenesis__2_6',
        urls = ['https://jcenter.bintray.com/org/objenesis/objenesis/2.6/objenesis-2.6.jar'],
        downloaded_file_path = 'objenesis-2.6.jar',
    )


    # com.spotify.mobius:mobius-core:jar:1.2.0 wanted version 3.0.1
    # com.spotify.mobius:mobius-rx2:jar:1.2.0 wanted version 3.0.1
    # com.google.guava:guava:bundle:27.0-android got requested version
    # com.spotify.mobius:mobius-android:aar:1.2.0 wanted version 3.0.1
    # com.spotify.mobius:mobius-extras:jar:1.2.0 wanted version 3.0.1
    http_file(name = 'android___com_google_code_findbugs__jsr305__3_0_2',
        urls = ['https://jcenter.bintray.com/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar'],
        downloaded_file_path = 'jsr305-3.0.2.jar',
    )


    # com.google.guava:guava:bundle:27.0-android
    http_file(name = 'android___com_google_j2objc__j2objc-annotations__1_1',
        urls = ['https://jcenter.bintray.com/com/google/j2objc/j2objc-annotations/1.1/j2objc-annotations-1.1.jar'],
        downloaded_file_path = 'j2objc-annotations-1.1.jar',
    )


    # androidx.legacy:legacy-support-core-utils:aar:1.0.0 got requested version
    # androidx.fragment:fragment:aar:1.1.0-alpha01
    http_file(name = 'android___androidx_loader__loader__1_0_0',
        urls = ['https://maven.google.com/androidx/loader/loader/1.0.0/loader-1.0.0.aar'],
        downloaded_file_path = 'loader-1.0.0.aar',
    )


    http_file(name = 'android___com_github_menny_Chauffeur__permissions__90e7032',
        urls = ['https://jitpack.io/com/github/menny/Chauffeur/permissions/90e7032/permissions-90e7032.aar'],
        downloaded_file_path = 'permissions-90e7032.aar',
    )


    # com.github.menny.Chauffeur:lib:aar:90e7032 got requested version
    # com.github.menny.Chauffeur:permissions:aar:90e7032 got requested version
    http_file(name = 'android___androidx_appcompat__appcompat__1_0_2',
        urls = ['https://maven.google.com/androidx/appcompat/appcompat/1.0.2/appcompat-1.0.2.aar'],
        downloaded_file_path = 'appcompat-1.0.2.aar',
    )


    # androidx.legacy:legacy-support-core-ui:aar:1.0.0
    http_file(name = 'android___androidx_drawerlayout__drawerlayout__1_0_0',
        urls = ['https://maven.google.com/androidx/drawerlayout/drawerlayout/1.0.0/drawerlayout-1.0.0.aar'],
        downloaded_file_path = 'drawerlayout-1.0.0.aar',
    )


    # androidx.activity:activity:aar:1.0.0-alpha01 got requested version
    # androidx.fragment:fragment:aar:1.1.0-alpha01 got requested version
    # androidx.loader:loader:aar:1.0.0
    http_file(name = 'android___androidx_lifecycle__lifecycle-viewmodel__2_0_0',
        urls = ['https://maven.google.com/androidx/lifecycle/lifecycle-viewmodel/2.0.0/lifecycle-viewmodel-2.0.0.aar'],
        downloaded_file_path = 'lifecycle-viewmodel-2.0.0.aar',
    )


    # com.google.guava:guava:bundle:27.0-android
    http_file(name = 'android___org_checkerframework__checker-compat-qual__2_5_2',
        urls = ['https://jcenter.bintray.com/org/checkerframework/checker-compat-qual/2.5.2/checker-compat-qual-2.5.2.jar'],
        downloaded_file_path = 'checker-compat-qual-2.5.2.jar',
    )


    # io.mockk:mockk:jar:1.8.13.kotlin13 got requested version
    # io.mockk:mockk-dsl-jvm:jar:1.8.13.kotlin13
    http_file(name = 'android___org_jetbrains_kotlin__kotlin-reflect__1_3_0',
        urls = ['https://jcenter.bintray.com/org/jetbrains/kotlin/kotlin-reflect/1.3.0/kotlin-reflect-1.3.0.jar'],
        downloaded_file_path = 'kotlin-reflect-1.3.0.jar',
    )


    # androidx.viewpager:viewpager:aar:1.0.0
    # androidx.coordinatorlayout:coordinatorlayout:aar:1.0.0 got requested version
    # androidx.slidingpanelayout:slidingpanelayout:aar:1.0.0 got requested version
    # androidx.legacy:legacy-support-core-ui:aar:1.0.0 got requested version
    # androidx.drawerlayout:drawerlayout:aar:1.0.0 got requested version
    http_file(name = 'android___androidx_customview__customview__1_0_0',
        urls = ['https://maven.google.com/androidx/customview/customview/1.0.0/customview-1.0.0.aar'],
        downloaded_file_path = 'customview-1.0.0.aar',
    )


    # io.reactivex.rxjava2:rxjava:jar:2.2.4
    http_file(name = 'android___org_reactivestreams__reactive-streams__1_0_2',
        urls = ['https://jcenter.bintray.com/org/reactivestreams/reactive-streams/1.0.2/reactive-streams-1.0.2.jar'],
        downloaded_file_path = 'reactive-streams-1.0.2.jar',
    )


    # org.jetbrains.kotlin:kotlin-reflect:jar:1.3.0
    http_file(name = 'android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0',
        urls = ['https://jcenter.bintray.com/org/jetbrains/kotlin/kotlin-stdlib/1.3.0/kotlin-stdlib-1.3.0.jar'],
        downloaded_file_path = 'kotlin-stdlib-1.3.0.jar',
    )


    # androidx.vectordrawable:vectordrawable-animated:aar:1.0.0
    http_file(name = 'android___androidx_legacy__legacy-support-core-ui__1_0_0',
        urls = ['https://maven.google.com/androidx/legacy/legacy-support-core-ui/1.0.0/legacy-support-core-ui-1.0.0.aar'],
        downloaded_file_path = 'legacy-support-core-ui-1.0.0.aar',
    )


    # io.mockk:mockk-agent-jvm:jar:1.8.13.kotlin13
    http_file(name = 'android___net_bytebuddy__byte-buddy-agent__1_8_22',
        urls = ['https://jcenter.bintray.com/net/bytebuddy/byte-buddy-agent/1.8.22/byte-buddy-agent-1.8.22.jar'],
        downloaded_file_path = 'byte-buddy-agent-1.8.22.jar',
    )


    # androidx.activity:activity:aar:1.0.0-alpha01 got requested version
    # androidx.core:core:aar:1.1.0-alpha01
    http_file(name = 'android___androidx_lifecycle__lifecycle-runtime__2_0_0',
        urls = ['https://maven.google.com/androidx/lifecycle/lifecycle-runtime/2.0.0/lifecycle-runtime-2.0.0.aar'],
        downloaded_file_path = 'lifecycle-runtime-2.0.0.aar',
    )


    # org.jetbrains.kotlin:kotlin-stdlib:jar:1.3.0
    http_file(name = 'android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0',
        urls = ['https://jcenter.bintray.com/org/jetbrains/kotlin/kotlin-stdlib-common/1.3.0/kotlin-stdlib-common-1.3.0.jar'],
        downloaded_file_path = 'kotlin-stdlib-common-1.3.0.jar',
    )


    # androidx.lifecycle:lifecycle-runtime:aar:2.0.0
    # androidx.lifecycle:lifecycle-livedata:aar:2.0.0 got requested version
    # androidx.lifecycle:lifecycle-livedata-core:aar:2.0.0 got requested version
    # androidx.arch.core:core-runtime:aar:2.0.0 got requested version
    http_file(name = 'android___androidx_arch_core__core-common__2_0_0',
        urls = ['https://maven.google.com/androidx/arch/core/core-common/2.0.0/core-common-2.0.0.jar'],
        downloaded_file_path = 'core-common-2.0.0.jar',
    )


    # androidx.appcompat:appcompat:aar:1.0.2
    # androidx.legacy:legacy-support-core-ui:aar:1.0.0 got requested version
    http_file(name = 'android___androidx_legacy__legacy-support-core-utils__1_0_0',
        urls = ['https://maven.google.com/androidx/legacy/legacy-support-core-utils/1.0.0/legacy-support-core-utils-1.0.0.aar'],
        downloaded_file_path = 'legacy-support-core-utils-1.0.0.aar',
    )


    # net.bytebuddy:byte-buddy-agent:jar:1.8.22
    http_file(name = 'android___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4',
        urls = ['https://jcenter.bintray.com/com/kohlschutter/junixsocket/junixsocket-native-common/2.0.4/junixsocket-native-common-2.0.4.jar'],
        downloaded_file_path = 'junixsocket-native-common-2.0.4.jar',
    )


    # org.jetbrains.kotlin:kotlin-stdlib:jar:1.3.0
    http_file(name = 'android___org_jetbrains__annotations__13_0',
        urls = ['https://jcenter.bintray.com/org/jetbrains/annotations/13.0/annotations-13.0.jar'],
        downloaded_file_path = 'annotations-13.0.jar',
    )



# Transitive rules macro to be run in the BUILD.bazel file.
# If you use kt_* rules, you MUST provide the correct rule implementation when call this macro, if you decide
# not to provide those implementations we'll try to use java_* rules.
def generate_android_main_transitive_dependency_rules(kt_jvm_import=None, kt_jvm_library=None):
    native.aar_import(name = 'android___androidx_localbroadcastmanager__localbroadcastmanager__1_0_0',
        aar = '@android___androidx_localbroadcastmanager__localbroadcastmanager__1_0_0//file',
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
    )

    native.alias(name = 'android___androidx_localbroadcastmanager__localbroadcastmanager',
        actual = 'android___androidx_localbroadcastmanager__localbroadcastmanager__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_lifecycle__lifecycle-livedata__2_0_0',
        aar = '@android___androidx_lifecycle__lifecycle-livedata__2_0_0//file',
        deps = [
            ':android___androidx_arch_core__core_common',
            ':android___androidx_arch_core__core_runtime',
            ':android___androidx_lifecycle__lifecycle_livedata_core',
        ],
        exports = [
            ':android___androidx_arch_core__core_common',
            ':android___androidx_arch_core__core_runtime',
            ':android___androidx_lifecycle__lifecycle_livedata_core',
        ],
    )

    native.alias(name = 'android___androidx_lifecycle__lifecycle_livedata',
        actual = 'android___androidx_lifecycle__lifecycle-livedata__2_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_google_guava__failureaccess__1_0',
        jars = ['@android___com_google_guava__failureaccess__1_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_google_guava__failureaccess',
        actual = 'android___com_google_guava__failureaccess__1_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_coordinatorlayout__coordinatorlayout__1_0_0',
        aar = '@android___androidx_coordinatorlayout__coordinatorlayout__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
    )

    native.alias(name = 'android___androidx_coordinatorlayout__coordinatorlayout',
        actual = 'android___androidx_coordinatorlayout__coordinatorlayout__1_0_0',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___io_mockk__mockk-agent-api__1_8_13_kotlin13',
            jars = ['@android___io_mockk__mockk-agent-api__1_8_13_kotlin13//file'],
            deps = [],
            exports = [],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___io_mockk__mockk-agent-api__1_8_13_kotlin13_kotlin_jar',
            jars = ['@android___io_mockk__mockk-agent-api__1_8_13_kotlin13//file'],
        )

        kt_jvm_library(name = 'android___io_mockk__mockk-agent-api__1_8_13_kotlin13',
            runtime_deps = [':android___io_mockk__mockk-agent-api__1_8_13_kotlin13_kotlin_jar'],
            exports = [':android___io_mockk__mockk-agent-api__1_8_13_kotlin13_kotlin_jar'],
        )

    native.alias(name = 'android___io_mockk__mockk_agent_api',
        actual = 'android___io_mockk__mockk-agent-api__1_8_13_kotlin13',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___io_mockk__mockk__1_8_13_kotlin13',
            jars = ['@android___io_mockk__mockk__1_8_13_kotlin13//file'],
            deps = [
                ':android___io_mockk__mockk_agent_jvm',
                ':android___io_mockk__mockk_common',
                ':android___io_mockk__mockk_dsl_jvm',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
            exports = [
                ':android___io_mockk__mockk_agent_jvm',
                ':android___io_mockk__mockk_common',
                ':android___io_mockk__mockk_dsl_jvm',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___io_mockk__mockk__1_8_13_kotlin13_kotlin_jar',
            jars = ['@android___io_mockk__mockk__1_8_13_kotlin13//file'],
        )

        kt_jvm_library(name = 'android___io_mockk__mockk__1_8_13_kotlin13',
            runtime_deps = [
                ':android___io_mockk__mockk__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_agent_jvm',
                ':android___io_mockk__mockk_common',
                ':android___io_mockk__mockk_dsl_jvm',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
            exports = [
                ':android___io_mockk__mockk__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_agent_jvm',
                ':android___io_mockk__mockk_common',
                ':android___io_mockk__mockk_dsl_jvm',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
        )

    native.alias(name = 'android___io_mockk__mockk',
        actual = 'android___io_mockk__mockk__1_8_13_kotlin13',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_vectordrawable__vectordrawable__1_0_1',
        aar = '@android___androidx_vectordrawable__vectordrawable__1_0_1//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
        ],
    )

    native.alias(name = 'android___androidx_vectordrawable__vectordrawable',
        actual = 'android___androidx_vectordrawable__vectordrawable__1_0_1',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_google_errorprone__error_prone_annotations__2_2_0',
        jars = ['@android___com_google_errorprone__error_prone_annotations__2_2_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_google_errorprone__error_prone_annotations',
        actual = 'android___com_google_errorprone__error_prone_annotations__2_2_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_spotify_mobius__mobius-extras__1_2_0',
        jars = ['@android___com_spotify_mobius__mobius-extras__1_2_0//file'],
        deps = [':android___com_spotify_mobius__mobius_core'],
        exports = [':android___com_spotify_mobius__mobius_core'],
        runtime_deps = [
            ':android___com_google_code_findbugs__jsr305',
            ':android___org_slf4j__slf4j_api',
        ],
    )

    native.alias(name = 'android___com_spotify_mobius__mobius_extras',
        actual = 'android___com_spotify_mobius__mobius-extras__1_2_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_versionedparcelable__versionedparcelable__1_1_0-alpha01',
        aar = '@android___androidx_versionedparcelable__versionedparcelable__1_1_0-alpha01//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_collection__collection',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_collection__collection',
        ],
    )

    native.alias(name = 'android___androidx_versionedparcelable__versionedparcelable',
        actual = 'android___androidx_versionedparcelable__versionedparcelable__1_1_0-alpha01',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_interpolator__interpolator__1_0_0',
        aar = '@android___androidx_interpolator__interpolator__1_0_0//file',
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
    )

    native.alias(name = 'android___androidx_interpolator__interpolator',
        actual = 'android___androidx_interpolator__interpolator__1_0_0',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___io_mockk__mockk-common__1_8_13_kotlin13',
            jars = ['@android___io_mockk__mockk-common__1_8_13_kotlin13//file'],
            deps = [':android___io_mockk__mockk_dsl'],
            exports = [':android___io_mockk__mockk_dsl'],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___io_mockk__mockk-common__1_8_13_kotlin13_kotlin_jar',
            jars = ['@android___io_mockk__mockk-common__1_8_13_kotlin13//file'],
        )

        kt_jvm_library(name = 'android___io_mockk__mockk-common__1_8_13_kotlin13',
            runtime_deps = [
                ':android___io_mockk__mockk-common__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_dsl',
            ],
            exports = [
                ':android___io_mockk__mockk-common__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_dsl',
            ],
        )

    native.alias(name = 'android___io_mockk__mockk_common',
        actual = 'android___io_mockk__mockk-common__1_8_13_kotlin13',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_fragment__fragment__1_1_0-alpha01',
        aar = '@android___androidx_fragment__fragment__1_1_0-alpha01//file',
        deps = [
            ':android___androidx_activity__activity',
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_lifecycle__lifecycle_viewmodel',
            ':android___androidx_loader__loader',
            ':android___androidx_viewpager__viewpager',
        ],
        exports = [
            ':android___androidx_activity__activity',
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_lifecycle__lifecycle_viewmodel',
            ':android___androidx_loader__loader',
            ':android___androidx_viewpager__viewpager',
        ],
    )

    native.alias(name = 'android___androidx_fragment__fragment',
        actual = 'android___androidx_fragment__fragment__1_1_0-alpha01',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___log4j__log4j__1_2_17',
        jars = ['@android___log4j__log4j__1_2_17//file'],
        deps = [':android___org_apache_openejb__javaee_api'],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___log4j__log4j',
        actual = 'android___log4j__log4j__1_2_17',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___com_spotify_mobius__mobius-android__1_2_0',
        aar = '@android___com_spotify_mobius__mobius-android__1_2_0//file',
        deps = [
            ':android___com_google_code_findbugs__jsr305',
            ':android___com_spotify_mobius__mobius_core',
            ':android___org_slf4j__slf4j_api',
        ],
        exports = [
            ':android___com_google_code_findbugs__jsr305',
            ':android___com_spotify_mobius__mobius_core',
            ':android___org_slf4j__slf4j_api',
        ],
    )

    native.alias(name = 'android___com_spotify_mobius__mobius_android',
        actual = 'android___com_spotify_mobius__mobius-android__1_2_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_asynclayoutinflater__asynclayoutinflater__1_0_0',
        aar = '@android___androidx_asynclayoutinflater__asynclayoutinflater__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
        ],
    )

    native.alias(name = 'android___androidx_asynclayoutinflater__asynclayoutinflater',
        actual = 'android___androidx_asynclayoutinflater__asynclayoutinflater__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_google_guava__listenablefuture__9999_0-empty-to-avoid-conflict-with-guava',
        jars = ['@android___com_google_guava__listenablefuture__9999_0-empty-to-avoid-conflict-with-guava//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_google_guava__listenablefuture',
        actual = 'android___com_google_guava__listenablefuture__9999_0-empty-to-avoid-conflict-with-guava',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_google_guava__guava__27_0-android',
        jars = ['@android___com_google_guava__guava__27_0-android//file'],
        deps = [
            ':android___com_google_code_findbugs__jsr305',
            ':android___com_google_errorprone__error_prone_annotations',
            ':android___com_google_guava__failureaccess',
            ':android___com_google_guava__listenablefuture',
            ':android___com_google_j2objc__j2objc_annotations',
            ':android___org_checkerframework__checker_compat_qual',
            ':android___org_codehaus_mojo__animal_sniffer_annotations',
        ],
        exports = [
            ':android___com_google_code_findbugs__jsr305',
            ':android___com_google_errorprone__error_prone_annotations',
            ':android___com_google_guava__failureaccess',
            ':android___com_google_guava__listenablefuture',
            ':android___com_google_j2objc__j2objc_annotations',
            ':android___org_checkerframework__checker_compat_qual',
            ':android___org_codehaus_mojo__animal_sniffer_annotations',
        ],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_google_guava__guava',
        actual = 'android___com_google_guava__guava__27_0-android',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_lifecycle__lifecycle-livedata-core__2_0_0',
        aar = '@android___androidx_lifecycle__lifecycle-livedata-core__2_0_0//file',
        deps = [
            ':android___androidx_arch_core__core_common',
            ':android___androidx_arch_core__core_runtime',
            ':android___androidx_lifecycle__lifecycle_common',
        ],
        exports = [
            ':android___androidx_arch_core__core_common',
            ':android___androidx_arch_core__core_runtime',
            ':android___androidx_lifecycle__lifecycle_common',
        ],
    )

    native.alias(name = 'android___androidx_lifecycle__lifecycle_livedata_core',
        actual = 'android___androidx_lifecycle__lifecycle-livedata-core__2_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_cursoradapter__cursoradapter__1_0_0',
        aar = '@android___androidx_cursoradapter__cursoradapter__1_0_0//file',
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
    )

    native.alias(name = 'android___androidx_cursoradapter__cursoradapter',
        actual = 'android___androidx_cursoradapter__cursoradapter__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_swiperefreshlayout__swiperefreshlayout__1_0_0',
        aar = '@android___androidx_swiperefreshlayout__swiperefreshlayout__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_interpolator__interpolator',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_interpolator__interpolator',
        ],
    )

    native.alias(name = 'android___androidx_swiperefreshlayout__swiperefreshlayout',
        actual = 'android___androidx_swiperefreshlayout__swiperefreshlayout__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_slf4j__slf4j-api__1_7_25',
        jars = ['@android___org_slf4j__slf4j-api__1_7_25//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_slf4j__slf4j_api',
        actual = 'android___org_slf4j__slf4j-api__1_7_25',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___io_reactivex_rxjava2__rxandroid__2_1_0',
        aar = '@android___io_reactivex_rxjava2__rxandroid__2_1_0//file',
        deps = [':android___io_reactivex_rxjava2__rxjava'],
        exports = [':android___io_reactivex_rxjava2__rxjava'],
    )

    native.alias(name = 'android___io_reactivex_rxjava2__rxandroid',
        actual = 'android___io_reactivex_rxjava2__rxandroid__2_1_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_vectordrawable__vectordrawable-animated__1_0_0',
        aar = '@android___androidx_vectordrawable__vectordrawable-animated__1_0_0//file',
        deps = [
            ':android___androidx_legacy__legacy_support_core_ui',
            ':android___androidx_vectordrawable__vectordrawable',
        ],
        exports = [
            ':android___androidx_legacy__legacy_support_core_ui',
            ':android___androidx_vectordrawable__vectordrawable',
        ],
    )

    native.alias(name = 'android___androidx_vectordrawable__vectordrawable_animated',
        actual = 'android___androidx_vectordrawable__vectordrawable-animated__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___javax_annotation__jsr250-api__1_0',
        jars = ['@android___javax_annotation__jsr250-api__1_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___javax_annotation__jsr250_api',
        actual = 'android___javax_annotation__jsr250-api__1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_google_code_findbugs__findbugs-annotations__3_0_1',
        jars = ['@android___com_google_code_findbugs__findbugs-annotations__3_0_1//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_google_code_findbugs__findbugs_annotations',
        actual = 'android___com_google_code_findbugs__findbugs-annotations__3_0_1',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13',
            jars = ['@android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13//file'],
            deps = [
                ':android___io_mockk__mockk_agent_api',
                ':android___io_mockk__mockk_agent_common',
                ':android___net_bytebuddy__byte_buddy',
                ':android___org_objenesis__objenesis',
            ],
            exports = [
                ':android___io_mockk__mockk_agent_api',
                ':android___io_mockk__mockk_agent_common',
                ':android___net_bytebuddy__byte_buddy',
                ':android___org_objenesis__objenesis',
            ],
            runtime_deps = [':android___net_bytebuddy__byte_buddy_agent'],
        )
    else:
        kt_jvm_import(name = 'android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13_kotlin_jar',
            jars = ['@android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13//file'],
        )

        kt_jvm_library(name = 'android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13',
            runtime_deps = [
                ':android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_agent_api',
                ':android___io_mockk__mockk_agent_common',
                ':android___net_bytebuddy__byte_buddy',
                ':android___net_bytebuddy__byte_buddy_agent',
                ':android___org_objenesis__objenesis',
            ],
            exports = [
                ':android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_agent_api',
                ':android___io_mockk__mockk_agent_common',
                ':android___net_bytebuddy__byte_buddy',
                ':android___org_objenesis__objenesis',
            ],
        )

    native.alias(name = 'android___io_mockk__mockk_agent_jvm',
        actual = 'android___io_mockk__mockk-agent-jvm__1_8_13_kotlin13',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___com_github_menny_Chauffeur__lib__90e7032',
        aar = '@android___com_github_menny_Chauffeur__lib__90e7032//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_appcompat__appcompat',
            ':android___androidx_fragment__fragment',
        ],
        exports = [],
    )

    native.alias(name = 'android___com_github_menny_Chauffeur__lib',
        actual = 'android___com_github_menny_Chauffeur__lib__90e7032',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_spotify_mobius__mobius-rx2__1_2_0',
        jars = ['@android___com_spotify_mobius__mobius-rx2__1_2_0//file'],
        deps = [
            ':android___com_spotify_mobius__mobius_core',
            ':android___io_reactivex_rxjava2__rxjava',
        ],
        exports = [
            ':android___com_spotify_mobius__mobius_core',
            ':android___io_reactivex_rxjava2__rxjava',
        ],
        runtime_deps = [':android___com_google_code_findbugs__jsr305'],
    )

    native.alias(name = 'android___com_spotify_mobius__mobius_rx2',
        actual = 'android___com_spotify_mobius__mobius-rx2__1_2_0',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13',
            jars = ['@android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13//file'],
            deps = [
                ':android___io_mockk__mockk_dsl',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
            exports = [
                ':android___io_mockk__mockk_dsl',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13_kotlin_jar',
            jars = ['@android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13//file'],
        )

        kt_jvm_library(name = 'android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13',
            runtime_deps = [
                ':android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_dsl',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
            exports = [
                ':android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_dsl',
                ':android___org_jetbrains_kotlin__kotlin_reflect',
            ],
        )

    native.alias(name = 'android___io_mockk__mockk_dsl_jvm',
        actual = 'android___io_mockk__mockk-dsl-jvm__1_8_13_kotlin13',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___androidx_annotation__annotation__1_0_0',
        jars = ['@android___androidx_annotation__annotation__1_0_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___androidx_annotation__annotation',
        actual = 'android___androidx_annotation__annotation__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_activity__activity__1_0_0-alpha01',
        aar = '@android___androidx_activity__activity__1_0_0-alpha01//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_lifecycle__lifecycle_runtime',
            ':android___androidx_lifecycle__lifecycle_viewmodel',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_lifecycle__lifecycle_runtime',
            ':android___androidx_lifecycle__lifecycle_viewmodel',
        ],
    )

    native.alias(name = 'android___androidx_activity__activity',
        actual = 'android___androidx_activity__activity__1_0_0-alpha01',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___io_mockk__mockk-dsl__1_8_13_kotlin13',
            jars = ['@android___io_mockk__mockk-dsl__1_8_13_kotlin13//file'],
            deps = [],
            exports = [],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___io_mockk__mockk-dsl__1_8_13_kotlin13_kotlin_jar',
            jars = ['@android___io_mockk__mockk-dsl__1_8_13_kotlin13//file'],
        )

        kt_jvm_library(name = 'android___io_mockk__mockk-dsl__1_8_13_kotlin13',
            runtime_deps = [':android___io_mockk__mockk-dsl__1_8_13_kotlin13_kotlin_jar'],
            exports = [':android___io_mockk__mockk-dsl__1_8_13_kotlin13_kotlin_jar'],
        )

    native.alias(name = 'android___io_mockk__mockk_dsl',
        actual = 'android___io_mockk__mockk-dsl__1_8_13_kotlin13',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_print__print__1_0_0',
        aar = '@android___androidx_print__print__1_0_0//file',
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
    )

    native.alias(name = 'android___androidx_print__print',
        actual = 'android___androidx_print__print__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_slidingpanelayout__slidingpanelayout__1_0_0',
        aar = '@android___androidx_slidingpanelayout__slidingpanelayout__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
    )

    native.alias(name = 'android___androidx_slidingpanelayout__slidingpanelayout',
        actual = 'android___androidx_slidingpanelayout__slidingpanelayout__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_kohlschutter_junixsocket__junixsocket-common__2_0_4',
        jars = ['@android___com_kohlschutter_junixsocket__junixsocket-common__2_0_4//file'],
        deps = [':android___log4j__log4j'],
        exports = [':android___log4j__log4j'],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_kohlschutter_junixsocket__junixsocket_common',
        actual = 'android___com_kohlschutter_junixsocket__junixsocket-common__2_0_4',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___io_reactivex_rxjava2__rxjava__2_2_4',
        jars = ['@android___io_reactivex_rxjava2__rxjava__2_2_4//file'],
        deps = [':android___org_reactivestreams__reactive_streams'],
        exports = [':android___org_reactivestreams__reactive_streams'],
        runtime_deps = [],
    )

    native.alias(name = 'android___io_reactivex_rxjava2__rxjava',
        actual = 'android___io_reactivex_rxjava2__rxjava__2_2_4',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_viewpager__viewpager__1_0_0',
        aar = '@android___androidx_viewpager__viewpager__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
    )

    native.alias(name = 'android___androidx_viewpager__viewpager',
        actual = 'android___androidx_viewpager__viewpager__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_codehaus_mojo__animal-sniffer-annotations__1_17',
        jars = ['@android___org_codehaus_mojo__animal-sniffer-annotations__1_17//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_codehaus_mojo__animal_sniffer_annotations',
        actual = 'android___org_codehaus_mojo__animal-sniffer-annotations__1_17',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_arch_core__core-runtime__2_0_0',
        aar = '@android___androidx_arch_core__core-runtime__2_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_arch_core__core_common',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_arch_core__core_common',
        ],
    )

    native.alias(name = 'android___androidx_arch_core__core_runtime',
        actual = 'android___androidx_arch_core__core-runtime__2_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___androidx_collection__collection__1_0_0',
        jars = ['@android___androidx_collection__collection__1_0_0//file'],
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
        runtime_deps = [],
    )

    native.alias(name = 'android___androidx_collection__collection',
        actual = 'android___androidx_collection__collection__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_scijava__native-lib-loader__2_0_2',
        jars = ['@android___org_scijava__native-lib-loader__2_0_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_scijava__native_lib_loader',
        actual = 'android___org_scijava__native-lib-loader__2_0_2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_spotify_mobius__mobius-core__1_2_0',
        jars = ['@android___com_spotify_mobius__mobius-core__1_2_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [
            ':android___com_google_code_findbugs__jsr305',
            ':android___org_slf4j__slf4j_api',
        ],
    )

    native.alias(name = 'android___com_spotify_mobius__mobius_core',
        actual = 'android___com_spotify_mobius__mobius-core__1_2_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___androidx_lifecycle__lifecycle-common__2_0_0',
        jars = ['@android___androidx_lifecycle__lifecycle-common__2_0_0//file'],
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
        runtime_deps = [],
    )

    native.alias(name = 'android___androidx_lifecycle__lifecycle_common',
        actual = 'android___androidx_lifecycle__lifecycle-common__2_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_apache_openejb__javaee-api__5_0-2',
        jars = ['@android___org_apache_openejb__javaee-api__5_0-2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_apache_openejb__javaee_api',
        actual = 'android___org_apache_openejb__javaee-api__5_0-2',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___io_mockk__mockk-agent-common__1_8_13_kotlin13',
            jars = ['@android___io_mockk__mockk-agent-common__1_8_13_kotlin13//file'],
            deps = [':android___io_mockk__mockk_agent_api'],
            exports = [':android___io_mockk__mockk_agent_api'],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___io_mockk__mockk-agent-common__1_8_13_kotlin13_kotlin_jar',
            jars = ['@android___io_mockk__mockk-agent-common__1_8_13_kotlin13//file'],
        )

        kt_jvm_library(name = 'android___io_mockk__mockk-agent-common__1_8_13_kotlin13',
            runtime_deps = [
                ':android___io_mockk__mockk-agent-common__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_agent_api',
            ],
            exports = [
                ':android___io_mockk__mockk-agent-common__1_8_13_kotlin13_kotlin_jar',
                ':android___io_mockk__mockk_agent_api',
            ],
        )

    native.alias(name = 'android___io_mockk__mockk_agent_common',
        actual = 'android___io_mockk__mockk-agent-common__1_8_13_kotlin13',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_core__core__1_1_0-alpha01',
        aar = '@android___androidx_core__core__1_1_0-alpha01//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_collection__collection',
            ':android___androidx_lifecycle__lifecycle_runtime',
            ':android___androidx_versionedparcelable__versionedparcelable',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_collection__collection',
            ':android___androidx_lifecycle__lifecycle_runtime',
            ':android___androidx_versionedparcelable__versionedparcelable',
        ],
    )

    native.alias(name = 'android___androidx_core__core',
        actual = 'android___androidx_core__core__1_1_0-alpha01',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_documentfile__documentfile__1_0_0',
        aar = '@android___androidx_documentfile__documentfile__1_0_0//file',
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
    )

    native.alias(name = 'android___androidx_documentfile__documentfile',
        actual = 'android___androidx_documentfile__documentfile__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___net_bytebuddy__byte-buddy__1_8_22',
        jars = ['@android___net_bytebuddy__byte-buddy__1_8_22//file'],
        deps = [':android___com_google_code_findbugs__findbugs_annotations'],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___net_bytebuddy__byte_buddy',
        actual = 'android___net_bytebuddy__byte-buddy__1_8_22',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_objenesis__objenesis__2_6',
        jars = ['@android___org_objenesis__objenesis__2_6//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_objenesis__objenesis',
        actual = 'android___org_objenesis__objenesis__2_6',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_google_code_findbugs__jsr305__3_0_2',
        jars = ['@android___com_google_code_findbugs__jsr305__3_0_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_google_code_findbugs__jsr305',
        actual = 'android___com_google_code_findbugs__jsr305__3_0_2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_google_j2objc__j2objc-annotations__1_1',
        jars = ['@android___com_google_j2objc__j2objc-annotations__1_1//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_google_j2objc__j2objc_annotations',
        actual = 'android___com_google_j2objc__j2objc-annotations__1_1',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_loader__loader__1_0_0',
        aar = '@android___androidx_loader__loader__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_lifecycle__lifecycle_livedata',
            ':android___androidx_lifecycle__lifecycle_viewmodel',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_lifecycle__lifecycle_livedata',
            ':android___androidx_lifecycle__lifecycle_viewmodel',
        ],
    )

    native.alias(name = 'android___androidx_loader__loader',
        actual = 'android___androidx_loader__loader__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___com_github_menny_Chauffeur__permissions__90e7032',
        aar = '@android___com_github_menny_Chauffeur__permissions__90e7032//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_appcompat__appcompat',
            ':android___androidx_fragment__fragment',
            ':android___com_github_menny_Chauffeur__lib',
        ],
        exports = [':android___com_github_menny_Chauffeur__lib'],
    )

    native.alias(name = 'android___com_github_menny_Chauffeur__permissions',
        actual = 'android___com_github_menny_Chauffeur__permissions__90e7032',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_appcompat__appcompat__1_0_2',
        aar = '@android___androidx_appcompat__appcompat__1_0_2//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_collection__collection',
            ':android___androidx_core__core',
            ':android___androidx_cursoradapter__cursoradapter',
            ':android___androidx_fragment__fragment',
            ':android___androidx_legacy__legacy_support_core_utils',
            ':android___androidx_vectordrawable__vectordrawable',
            ':android___androidx_vectordrawable__vectordrawable_animated',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_collection__collection',
            ':android___androidx_core__core',
            ':android___androidx_cursoradapter__cursoradapter',
            ':android___androidx_fragment__fragment',
            ':android___androidx_legacy__legacy_support_core_utils',
            ':android___androidx_vectordrawable__vectordrawable',
            ':android___androidx_vectordrawable__vectordrawable_animated',
        ],
    )

    native.alias(name = 'android___androidx_appcompat__appcompat',
        actual = 'android___androidx_appcompat__appcompat__1_0_2',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_drawerlayout__drawerlayout__1_0_0',
        aar = '@android___androidx_drawerlayout__drawerlayout__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_customview__customview',
        ],
    )

    native.alias(name = 'android___androidx_drawerlayout__drawerlayout',
        actual = 'android___androidx_drawerlayout__drawerlayout__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_lifecycle__lifecycle-viewmodel__2_0_0',
        aar = '@android___androidx_lifecycle__lifecycle-viewmodel__2_0_0//file',
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
    )

    native.alias(name = 'android___androidx_lifecycle__lifecycle_viewmodel',
        actual = 'android___androidx_lifecycle__lifecycle-viewmodel__2_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_checkerframework__checker-compat-qual__2_5_2',
        jars = ['@android___org_checkerframework__checker-compat-qual__2_5_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_checkerframework__checker_compat_qual',
        actual = 'android___org_checkerframework__checker-compat-qual__2_5_2',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___org_jetbrains_kotlin__kotlin-reflect__1_3_0',
            jars = ['@android___org_jetbrains_kotlin__kotlin-reflect__1_3_0//file'],
            deps = [':android___org_jetbrains_kotlin__kotlin_stdlib'],
            exports = [':android___org_jetbrains_kotlin__kotlin_stdlib'],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___org_jetbrains_kotlin__kotlin-reflect__1_3_0_kotlin_jar',
            jars = ['@android___org_jetbrains_kotlin__kotlin-reflect__1_3_0//file'],
        )

        kt_jvm_library(name = 'android___org_jetbrains_kotlin__kotlin-reflect__1_3_0',
            runtime_deps = [
                ':android___org_jetbrains_kotlin__kotlin-reflect__1_3_0_kotlin_jar',
                ':android___org_jetbrains_kotlin__kotlin_stdlib',
            ],
            exports = [
                ':android___org_jetbrains_kotlin__kotlin-reflect__1_3_0_kotlin_jar',
                ':android___org_jetbrains_kotlin__kotlin_stdlib',
            ],
        )

    native.alias(name = 'android___org_jetbrains_kotlin__kotlin_reflect',
        actual = 'android___org_jetbrains_kotlin__kotlin-reflect__1_3_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_customview__customview__1_0_0',
        aar = '@android___androidx_customview__customview__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
        ],
    )

    native.alias(name = 'android___androidx_customview__customview',
        actual = 'android___androidx_customview__customview__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_reactivestreams__reactive-streams__1_0_2',
        jars = ['@android___org_reactivestreams__reactive-streams__1_0_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_reactivestreams__reactive_streams',
        actual = 'android___org_reactivestreams__reactive-streams__1_0_2',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0',
            jars = ['@android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0//file'],
            deps = [
                ':android___org_jetbrains__annotations',
                ':android___org_jetbrains_kotlin__kotlin_stdlib_common',
            ],
            exports = [
                ':android___org_jetbrains__annotations',
                ':android___org_jetbrains_kotlin__kotlin_stdlib_common',
            ],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0_kotlin_jar',
            jars = ['@android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0//file'],
        )

        kt_jvm_library(name = 'android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0',
            runtime_deps = [
                ':android___org_jetbrains__annotations',
                ':android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0_kotlin_jar',
                ':android___org_jetbrains_kotlin__kotlin_stdlib_common',
            ],
            exports = [
                ':android___org_jetbrains__annotations',
                ':android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0_kotlin_jar',
                ':android___org_jetbrains_kotlin__kotlin_stdlib_common',
            ],
        )

    native.alias(name = 'android___org_jetbrains_kotlin__kotlin_stdlib',
        actual = 'android___org_jetbrains_kotlin__kotlin-stdlib__1_3_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_legacy__legacy-support-core-ui__1_0_0',
        aar = '@android___androidx_legacy__legacy-support-core-ui__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_asynclayoutinflater__asynclayoutinflater',
            ':android___androidx_coordinatorlayout__coordinatorlayout',
            ':android___androidx_core__core',
            ':android___androidx_cursoradapter__cursoradapter',
            ':android___androidx_customview__customview',
            ':android___androidx_drawerlayout__drawerlayout',
            ':android___androidx_interpolator__interpolator',
            ':android___androidx_legacy__legacy_support_core_utils',
            ':android___androidx_slidingpanelayout__slidingpanelayout',
            ':android___androidx_swiperefreshlayout__swiperefreshlayout',
            ':android___androidx_viewpager__viewpager',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_asynclayoutinflater__asynclayoutinflater',
            ':android___androidx_coordinatorlayout__coordinatorlayout',
            ':android___androidx_core__core',
            ':android___androidx_cursoradapter__cursoradapter',
            ':android___androidx_customview__customview',
            ':android___androidx_drawerlayout__drawerlayout',
            ':android___androidx_interpolator__interpolator',
            ':android___androidx_legacy__legacy_support_core_utils',
            ':android___androidx_slidingpanelayout__slidingpanelayout',
            ':android___androidx_swiperefreshlayout__swiperefreshlayout',
            ':android___androidx_viewpager__viewpager',
        ],
    )

    native.alias(name = 'android___androidx_legacy__legacy_support_core_ui',
        actual = 'android___androidx_legacy__legacy-support-core-ui__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___net_bytebuddy__byte-buddy-agent__1_8_22',
        jars = ['@android___net_bytebuddy__byte-buddy-agent__1_8_22//file'],
        deps = [
            ':android___com_google_code_findbugs__findbugs_annotations',
            ':android___com_kohlschutter_junixsocket__junixsocket_native_common',
        ],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___net_bytebuddy__byte_buddy_agent',
        actual = 'android___net_bytebuddy__byte-buddy-agent__1_8_22',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_lifecycle__lifecycle-runtime__2_0_0',
        aar = '@android___androidx_lifecycle__lifecycle-runtime__2_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_arch_core__core_common',
            ':android___androidx_lifecycle__lifecycle_common',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_arch_core__core_common',
            ':android___androidx_lifecycle__lifecycle_common',
        ],
    )

    native.alias(name = 'android___androidx_lifecycle__lifecycle_runtime',
        actual = 'android___androidx_lifecycle__lifecycle-runtime__2_0_0',
        visibility = ['//visibility:public'],
    )


    if kt_jvm_import == None:
        native.java_import(name = 'android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0',
            jars = ['@android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0//file'],
            deps = [],
            exports = [],
            runtime_deps = [],
        )
    else:
        kt_jvm_import(name = 'android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0_kotlin_jar',
            jars = ['@android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0//file'],
        )

        kt_jvm_library(name = 'android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0',
            runtime_deps = [':android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0_kotlin_jar'],
            exports = [':android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0_kotlin_jar'],
        )

    native.alias(name = 'android___org_jetbrains_kotlin__kotlin_stdlib_common',
        actual = 'android___org_jetbrains_kotlin__kotlin-stdlib-common__1_3_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___androidx_arch_core__core-common__2_0_0',
        jars = ['@android___androidx_arch_core__core-common__2_0_0//file'],
        deps = [':android___androidx_annotation__annotation'],
        exports = [':android___androidx_annotation__annotation'],
        runtime_deps = [],
    )

    native.alias(name = 'android___androidx_arch_core__core_common',
        actual = 'android___androidx_arch_core__core-common__2_0_0',
        visibility = ['//visibility:public'],
    )


    native.aar_import(name = 'android___androidx_legacy__legacy-support-core-utils__1_0_0',
        aar = '@android___androidx_legacy__legacy-support-core-utils__1_0_0//file',
        deps = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_documentfile__documentfile',
            ':android___androidx_loader__loader',
            ':android___androidx_localbroadcastmanager__localbroadcastmanager',
            ':android___androidx_print__print',
        ],
        exports = [
            ':android___androidx_annotation__annotation',
            ':android___androidx_core__core',
            ':android___androidx_documentfile__documentfile',
            ':android___androidx_loader__loader',
            ':android___androidx_localbroadcastmanager__localbroadcastmanager',
            ':android___androidx_print__print',
        ],
    )

    native.alias(name = 'android___androidx_legacy__legacy_support_core_utils',
        actual = 'android___androidx_legacy__legacy-support-core-utils__1_0_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4',
        jars = ['@android___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4//file'],
        deps = [
            ':android___com_kohlschutter_junixsocket__junixsocket_common',
            ':android___log4j__log4j',
            ':android___org_scijava__native_lib_loader',
        ],
        exports = [
            ':android___com_kohlschutter_junixsocket__junixsocket_common',
            ':android___log4j__log4j',
            ':android___org_scijava__native_lib_loader',
        ],
        runtime_deps = [],
    )

    native.alias(name = 'android___com_kohlschutter_junixsocket__junixsocket_native_common',
        actual = 'android___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'android___org_jetbrains__annotations__13_0',
        jars = ['@android___org_jetbrains__annotations__13_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'android___org_jetbrains__annotations',
        actual = 'android___org_jetbrains__annotations__13_0',
        visibility = ['//visibility:public'],
    )


