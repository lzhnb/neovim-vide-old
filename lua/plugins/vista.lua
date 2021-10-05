-- How each level is indented and what to prepend.
-- This could make the display more compact or more spacious.
-- e.g., more compact: ["▸ ", ""]
-- Note: this option only works for the kind renderer, not the tree renderer.
vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}

-- Executive used when opening vista sidebar without specifying it.
-- See all the avaliable executives via `:echo g:vista#executives`.
vim.g.vista_default_executive = "coc"

vim.g.vista_echo_cursor_strategy = "floating_win" -- floating preview
vim.g.vista_sidebar_width = 30  -- width of vista
vim.g.vista_cursor_delay = 400  -- stay delay to show the information of current
vim.g.vista_stay_on_open = 1    -- move to the vista while opening it

