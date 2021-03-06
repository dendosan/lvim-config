local function keybinder(mode, keys, cmd)
  local mode = mode
  local keys = keys
  local cmd = cmd
  vim.api.nvim_set_keymap(mode, keys, cmd, { noremap = true, silent = true })
end

function Nnoremap(keys, cmd)
  keybinder("n", keys, cmd)
end

Nnoremap(",m", [[:lua require('harpoon.mark').add_file()<CR>]])
Nnoremap(",e", [[:lua require('harpoon.ui').toggle_quick_menu()<CR>]])

Nnoremap(",a", [[:lua require('harpoon.ui').nav_file(1)<CR>]])
Nnoremap(",s", [[:lua require('harpoon.ui').nav_file(2)<CR>]])
Nnoremap(",d", [[:lua require('harpoon.ui').nav_file(3)<CR>]])
Nnoremap(",f", [[:lua require('harpoon.ui').nav_file(4)<CR>]])
Nnoremap(",g", [[:lua require('harpoon.ui').nav_file(5)<CR>]])

-- t = terminal
Nnoremap(",t", [[:lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>]])
Nnoremap("ta", [[:lua require('harpoon.term').gotoTerminal(1)<CR>]])
Nnoremap("ts", [[:lua require('harpoon.term').gotoTerminal(2)<CR>]])
Nnoremap("td", [[:lua require('harpoon.term').sendCommand(1, 1)<CR>]])
Nnoremap("tf", [[:lua require('harpoon.term').sendCommand(1, 'la')<CR>]])
-- tf :lua require('harpoon.term').sendCommand(1, 'la')<CR>  tf :lua require('harpoon.term').sendCommand(1, 'la')<CR>
