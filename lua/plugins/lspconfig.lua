return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          inlayHints = {
            typeHints = { enable = false },
          },
          initialization_options = {
            check = { workspace = false },
          },
        },
      },
    },
  },
}
