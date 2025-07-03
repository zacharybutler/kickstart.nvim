return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    -- Add HTML to the filetypes so TypeScript LSP works in HTML files
    filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
      'html', -- This enables TypeScript completion in HTML files
    },
    settings = {
      -- TypeScript server preferences for better completion
      tsserver_file_preferences = {
        includeCompletionsForModuleExports = true,
        includeCompletionsForImportStatements = true,
        includeCompletionsWithSnippetText = true,
        includeCompletionsWithInsertText = true,
      },
      -- Publish diagnostics on insert leave to reduce noise
      publish_diagnostic_on = 'insert_leave',
      -- Enable separate diagnostic server for better performance
      separate_diagnostic_server = true,
    },
  },
}
