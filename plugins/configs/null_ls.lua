local present, nls = pcall(require, "null-ls")

if not present then
   return
end

local b = nls.builtins

local sources = {
   -- Formatting
   b.formatting.stylua,
   b.formatting.dart_format,
   b.formatting.prettierd,
   b.formatting.beautysh,
   -- b.formatting.prettier,
   -- b.formatting.eslint_d,
   -- Code Action
   b.code_actions.eslint,
   -- b.code_actions.refactoring,
   -- b.code_actions.gitsigns,
   -- b.code_actions.xo,
   -- Diagnostics
   b.diagnostics.eslint,
   -- completion
   -- b.completion.spell,
}

nls.setup {
   sources = sources,
   debug = true,
}
