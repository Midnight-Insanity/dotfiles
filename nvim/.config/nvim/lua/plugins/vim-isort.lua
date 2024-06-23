-- isort plugin
return{
'fisadev/vim-isort',
  ft = 'python',
  config = function ()
  -- Disable default key mapping
  vim.g.vim_isort_map = ''

  -- Automatically format file buffer while saving
  vim.api.nvim_create_autocmd({ "BufWritePre" },{
      pattern = "*.py",
      callback = function ()
        vim.cmd("isort")       
      end,
    })
  end
}
