-- plugins/syntastic.lua

return {
  'vim-syntastic/syntastic',
  event = { 'BufReadPre', 'BufNewFile' },

  config = function()
    -- Use norminette and clang as checkers for C files
    vim.g.syntastic_c_checkers = { 'norminette', 'gcc' }

    -- Combine errors from multiple checkers
    vim.g.syntastic_aggregate_errors = 1

    -- Path to norminette executable (adjust if needed)
    vim.g.syntastic_c_norminette_exec = 'norminette'

    -- Arguments passed to norminette
    vim.g.syntastic_c_norminette_args = '-R CheckTopCommentHeader'

    vim.g.c_syntax_for_h = 1
    -- Include directories for header search
    vim.g.syntastic_c_include_dirs = {
      'include',
      '../include',
      '../../include',
      'libft',
      '../libft/include',
      '../../libft/include',
    }

    -- Check files on open
    vim.g.syntastic_check_on_open = 1

    -- Disable automatic population of location list (we want quickfix)
    vim.g.syntastic_always_populate_loc_list = 1

    -- Disable automatic opening of location list
    vim.g.syntastic_auto_loc_list = 0

    -- Disable auto jumping to the first error
    vim.g.syntastic_auto_jump = 0

    -- Disable checking when writing and quitting
    vim.g.syntastic_check_on_wq = 0

    -- Disable Highlighting
    vim.g.syntastic_enable_highlighting = 0
    vim.g.syntastic_enable_signs = 0

    --     vim.cmd [[
    --   function! s:OpenQuickfixIfErrors() abort
    --     if len(getqflist()) > 0 && expand('%') != ''
    --       " Open quickfix window at bottom with 10 lines height if not already open
    --       if empty(filter(range(1, winnr('$')), 'getwinvar(v:val, "&buftype") == "quickfix"'))
    --         botright copen 10
    --       endif
    --     else
    --       " Close quickfix window if open
    --       if !empty(filter(range(1, winnr('$')), 'getwinvar(v:val, "&buftype") == "quickfix"'))
    --         cclose
    --       endif
    --     endif
    --   endfunction
    --
    --   autocmd User SyntasticCheckPost call s:OpenQuickfixIfErrors()
    -- ]]
  end,
}
