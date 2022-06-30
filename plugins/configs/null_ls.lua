local present, nls = pcall(require, "null-ls")
local b = nls.builtins

if not present then
   return
end

local sources = {
   -- Formatting
   b.formatting.stylua,
   b.formatting.dart_format,
   b.formatting.prettierd,
   -- b.formatting.prettier,
   -- b.formatting.eslint_d,
   -- Code Action
   -- b.code_actions.refactoring,
   -- b.code_actions.gitsigns,
   -- Diagnostics
   -- b.diagnostics.eslint,
   -- completion
   -- b.completion.spell,
}

nls.setup {
   sources = sources,
   debug = true,
}
