"""Macros for libvpx Bazel build."""

load("@rules_cc//cc:cc_test.bzl", "cc_test")

def download_test_files(name, resource_files, script = "//bazel:resource_downloader"):
    """Generates genrules to download test files.

    Args:
        name: The name of the target.
        resource_files: A list of resource files to download.
        script: The downloader script to use.
    """
    for resource in resource_files:
        yuv_file = str(resource)
        native.genrule(
            name = name + "_" + yuv_file.replace("/", "_").replace(".", "_"),
            srcs = [],
            outs = [yuv_file],
            cmd = "$(location {script}) {yuv} $(location {yuv})".format(
                script = script,
                yuv = yuv_file,
            ),
            tools = [script],
            visibility = ["//visibility:public"],
        )

def generate_tests(name, tests):
    """Generates cc_test targets for a list of test files.

    Args:
        name: The name of the test suite.
        tests: A list of test source files (.cc).
    """
    suite = []
    for test in tests:
        test_name = test.replace("test/", "").replace(".cc", "")
        suite.append(test_name)
        cc_test(
            name = test_name,
            srcs = [test],
            deps = [
                ":libvpx_test_tools",
            ],
            linkopts = [
                "-undefined error",
                "-lpthread",
                "-lrt",
            ],
        )
    native.test_suite(
        name = name,
        tests = suite,
    )
