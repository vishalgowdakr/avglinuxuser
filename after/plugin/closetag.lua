local vim = vim
-- File extensions where the plugin is enabled
vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml'

-- File extensions where non-closing tags become self-closing
vim.g.closetag_xhtml_filenames =  '*.xhtml,*.jsx'

-- Filetypes where the plugin is enabled
vim.g.closetag_filetypes =  'html,xhtml,phtml'

-- Filetypes where non-closing tags become self-closing
vim.g.closetag_xhtml_filetypes =  'xhtml,jsx'

-- Case sensitivity for empty tags
vim.g.closetag_emptyTags_caseSensitive = true

-- Shortcut for closing tags (default: ">")
vim.g.closetag_shortcut = '>'

-- Shortcut to add ">" without closing tag (default: "")
vim.g.closetag_close_shortcut = '<leader>>'
