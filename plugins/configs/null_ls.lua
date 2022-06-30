local present, nls = pcall(require, "null-ls")
local b = nls.builtins

if not present then
   return
end

local sources = {
  b.formatting.stylua,
  b.formatting.dart_format,
  b.formatting.prettierd,
  -- b.formatting.prettier,
  -- b.diagnostics.eslint,
  -- b.completion.spell,
  -- b.formatting.eslint_d,
}

nls.setup({
  sources = sources,
  debug = true,
})
