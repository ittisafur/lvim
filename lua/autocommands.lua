local M = {}

M.config = function()
  -- Autocommands
  lvim.autocommands.custom_groups = {
    -- php, python, json
    { "Filetype", "*", "setlocal tabstop=4" },
  }
end

return M
