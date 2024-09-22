local is_windows = vim.loop.os_uname().version:match("Windows")

local vimscript_path = vim.fn.expand("$HOME")

-- TODO
-- Iterate over all vimscripts in vimscript path and source them
if is_windows then
	vimscript_path = vimscript_path .. "\\AppData\\Local\\nvim\\vimscript\\emmet.vim"
else
	vimscript_path = vimscript_path .. "/.config/nvim/vimscript/emmet.vim"
end

vim.cmd("source " .. vimscript_path)
vim.cmd("let g:searchindex_line_limit=2000000")
require("moimorua.settings")
require("moimorua.lazy")
require("moimorua.maps")
