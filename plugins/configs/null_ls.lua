local nls = require("null-ls")
local b = nls.builtins

local sources = {
  b.formatting.stylua,
  b.diagnostics.eslint,
  b.completion.spell,
  b.formatting.dart_format,
}

nls.setup({
  sources = sources,
})
