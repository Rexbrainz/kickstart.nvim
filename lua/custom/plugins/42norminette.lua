return {
  'alexandregv/norminette-vim',
  ft = { 'c', 'h' },
  config = function()
    -- Enable norminette-vim (and gcc)
    vim.g.syntastic_c_checkers = { 'norminette', 'gcc' }
    vim.g.syntastic_aggregate_errors = 1

    -- Set the path to norminette (optional, skip on 42 Mac)
    vim.g.syntastic_c_norminette_exec = 'norminette'

    -- Support headers (.h)
    vim.g.c_syntax_for_h = 1
    vim.g.syntastic_c_include_dirs = {
      'include',
      '../include',
      '../../include',
      'libft',
      '../libft/include',
      '../../libft/include',
    }

    -- Pass custom arguments to norminette
    vim.g.syntastic_c_norminette_args = '-R CheckTopCommentHeader'

    -- Check errors on file open
    vim.g.syntastic_check_on_open = 1

    -- Enable error list
    vim.g.syntastic_always_populate_loc_list = 1

    -- Automatically open error list
    vim.g.syntastic_auto_loc_list = 1

    -- Skip check when closing
    vim.g.syntastic_check_on_wq = 0
  end,
}
