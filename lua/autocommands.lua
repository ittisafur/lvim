local M = {}

M.config = function()
  -- Autocommands
  lvim.autocommands.custom_groups = {
    -- php, python, json
    { "Filetype", "php,python,json", "setlocal tabstop=4" },
    { "Filetype", "*", "setlocal relativenumber" }
  }
end

return M
