local M = {}

-- Set a colorscheme or notify if there's something wrong with it
---@param name string
---@return boolean
function M.colorscheme(name)
   -- Comprobation that `name` is a valid string
   if name == nil or name == vim.NIL then
      vim.notify('Colorscheme string not valid, check you user_settings.json')
      return false
   end

   local ok, _ = pcall(vim.cmd.colorscheme, name)
   if not ok then
      vim.notify('Could not find the colorscheme, check your settings.json')
      return false
   else
      vim.cmd.redraw()
      return true
   end
end

return M
