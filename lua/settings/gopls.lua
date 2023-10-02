return {
  gopls = {
    formatting = {
      ["local"] = "gke-internal.googlesource.com",
    },
    env = {
      GOPACKAGESDRIVER = "${workspaceRoot}/build/tools/vscode/gopackagesdriver.sh",
    },
    build = {
      directoryFilters = {
          "-node_modules",
          "-bazel-bin",
          "-bazel-out",
          "-bazel-private-cloud",
          "-bazel-testlogs"
      },
    },
  },
}
