local present, nls = pcall(require, "null-ls")
local b = nls.builtins

if not present then
   return
end

local sources = {
  b.formatting.stylua,
  b.diagnostics.eslint,
  b.completion.spell,
  b.formatting.dart_format,
}

nls.setup({
  sources = sources,
  debug = true,
})
