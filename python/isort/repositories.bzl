"""rules_isort dependencies"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

# buildifier: disable=unnamed-macro
def rules_isort_dependencies():
    """Defines isort dependencies"""
    maybe(
        http_archive,
        name = "rules_venv",
        integrity = "sha256-FljLZNHPXh37BRH/r6no2Z/eeBkuXJVBdSK2ULA6Tmw=",
        urls = ["https://github.com/periareon/rules_venv/releases/download/0.2.0/rules_venv-0.2.0.tar.gz"],
    )

# buildifier: disable=unnamed-macro
def isort_register_toolchains(register_toolchains = True):
    """Defines isort dependencies"""
    if register_toolchains:
        native.register_toolchains(
            str(Label("//python/isort/toolchain")),
        )
