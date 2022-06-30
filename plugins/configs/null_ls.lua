local present, nls = pcall(require, "null-ls")
local b = nls.builtins

if not present then
   return
end

local sources = {
   -- formatting
   b.formatting.stylua,
   b.formatting.dart_format,
   b.formatting.prettierd,
   -- b.formatting.prettier,
   -- b.formatting.eslint_d,
   -- code action
   b.code_actions.refactoring,
   -- diagnostics
   -- b.diagnostics.eslint,
   -- completion
   -- b.completion.spell,
}

nls.setup {
   sources = sources,
   debug = true,
}
