return {
  gopls = {
    formatting = {
      ["local"] = "gke-internal.googlesource.com",
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
