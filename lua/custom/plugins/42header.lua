return {
  'Diogo-ss/42-header.nvim',
  cmd = { 'Stdheader' },
  keys = { '<F1>' },
  opts = {
    default_map = true, -- Default mapping <F1> in normal mode.
    auto_update = true, -- Update header when saving.
    user = 'sudaniel', -- Your user.
    mail = 'sudaniel@student.42heilbronn.de', -- Your mail.
    -- add other options.
    filetypes = { 'c', 'h', 'cpp', 'hpp', 'tpp' },
  },
  config = function(_, opts)
    require('42header').setup(opts)
  end,
}
