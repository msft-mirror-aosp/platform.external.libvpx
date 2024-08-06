// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
///////////////////////////////////////////////////////////////////////////////

// This test runner acts as a wrapper to be used by the bazel build file
// to run the tests.
//
// It makes the following assumptions:
// 1. Your workspace is named `@libvpx`
// 2. You are using the `generate_tests` function that guarantees
//    all the data dependencies are downloaded to the proper location.
#include <gtest/gtest.h>
#include <iostream>
#include <string>
#include <filesystem>

#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

#include "tools/cpp/runfiles/runfiles.h"

// The existing test main function does some configuration
// depending on cpu architecture etc. that we like to apply.
#define main libvpx_test_main
#include "test/test_libvpx.cc"
#undef main

using ::bazel::tools::cpp::runfiles::Runfiles;
namespace fs = std::filesystem;

fs::path RunfilesPath(const std::string &path) {
  std::string error;
  std::unique_ptr<Runfiles> runfiles(Runfiles::CreateForTest(&error));
  if (runfiles == nullptr) {
    std::clog << "Unable to determine runfile path: " << error;
    exit(1);
  }

  // We expect @libvpx to be the workspace root.
  std::string workspace = "libvpx";
  return runfiles->Rlocation(workspace + "/" + path);
}

int main(int argc, char **argv) {
  // Hack attack! We need to coerce bazel to give us the runfiles path.
  // We do this by fetching a "known" existing file in the runfiles and
  // resolving the directory path.
  auto vpx_root =
      RunfilesPath("vp90-2-02-size-16x64.webm").parent_path().string();

#ifdef _WIN32
  SetEnvironmentVariableW(L"LIBVPX_TEST_DATA_PATH", vpx_root.c_str());
#else
  setenv("LIBVPX_TEST_DATA_PATH", vpx_root.c_str(), 1);
#endif
  std::cout << "Using runfiles path: " << vpx_root << "\n";
  return libvpx_test_main(argc, argv);
}
