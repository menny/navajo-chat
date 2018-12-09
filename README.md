# Navajo
![Logo](assets/web_hi_res_512.png "Najajo")

Instant Messaging

# Building
You need [Bazel](https://bazel.build/) installed for this. Follow the installation details for your OS [here](https://docs.bazel.build/versions/master/install.html).

## Adding external dependencies
Unlike other build systems, Bazel does not provide a dependency management service as part of the build and
does not provide a way to specify a Maven dependency (which will be resolved transitively) and be available during compilation.
<br/>
To solve this, we have a repository rule that will build a static dependency graph given a list of maven dependencies (similar to Yarn's lock-file):

* List your dependencies in a text file (say `dependencies.bzl`).
* Define a target using `deps_workspace_generator_rule`.
* Run the target using `bazel run`.

For example, for the Android client:
* Dependencies are listed [here](clients/android/maven_dependencies.bzl).
* The target `android_main_deps` is defined in the `BUILD.baze` [file](clients/android/BUILD.bazel).
  * `ANDROID_MAIN_DEPENDENCIES` is the loaded array from `maven_dependencies.bzl`.
  * By default, `repositories` uses Google, jCenter and Maven-Central as repositories. Here we are also adding `jitpack`.
  * Since some of our dependencies will transitively bring the legacy `com.android.support` library, we explicitly excluding that (we'll ask for `androidx` libraries)
  * Specifying the output file for the dependency graph (`output_deps_file_path = 'clients/android/resolved_main_dependencies.bzl'`).
  * To reduce confusion, and be explicit about where the dependency is to be used, we are adding prefixes to the macros and rules.
  * Run the rule from command-line: `bazel run //clients/android:android_main_deps`.
  * If there is a change in the dependency graph `resolved_main_dependencies.bzl` will change to reflect that. You'll need to check-in this file into the repo.


## Testing
To run all the tests and checks, execute `bazel test //...`. To run tests for a specific package/target, use `bazel test//path/to/target:target_name`, for example `bazel test //clients/android/welcome/bl:bl_test`

# License
```
   Copyright 2018 Menny Even Danan

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
```
