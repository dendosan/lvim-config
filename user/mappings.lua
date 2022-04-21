-- add your own keymapping

-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
lvim.keys.insert_mode["<C-a>"] = "<ESC>^i"
lvim.keys.insert_mode["<C-e>"] = "<End>"

lvim.keys.normal_mode["<Space><Space>x"] = ":w<cr>:source %<cr>"
-- lvim.keys.normal_mode["<Space>t"] = "<Plug>PlenaryTestFile"
lvim.keys.normal_mode["<Space>t"] = ":PlenaryBustedFile %<cr>"
