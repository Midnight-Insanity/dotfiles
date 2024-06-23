-- Python Formatter
return{
'psf/black',
  ft = 'python',
  config =function ()
  -- Automatically format file buffer before saing
  vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = "*.py",
      callback = function ()
      vim.cmd("Black")
      end,
    })
  end
}
