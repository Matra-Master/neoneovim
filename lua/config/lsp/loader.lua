local mason_registry = require "mason-registry"
local M = {}

function M.setup(packages, options)
  for package_name, _ in pairs(packages) do
    local package = mason_registry.get_package(package_name)

    if package_available then
      package:on_ready(function()
        local opts = vim.tbl_deep_extend("force", options, packages[package.name] or {})
        package:setup(opts)
      end)
    end
  end
end

return M
