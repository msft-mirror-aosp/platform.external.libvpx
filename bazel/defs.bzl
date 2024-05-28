def download_test_files(name, resource_files, script = "//bazel:resource_downloader"):
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
    suite = []
    for test in tests:
        test_name = test.replace("test/", "").replace(".cc", "")
        suite.append(test_name)
        native.cc_test(
            name = test_name,
            srcs = [test],
            deps = [
                ":libvpx_test_tools",
            ],
            linkopts = [
                "-undefined error",
            ],
        )
    native.test_suite(
        name = name,
        tests = suite,
    )
