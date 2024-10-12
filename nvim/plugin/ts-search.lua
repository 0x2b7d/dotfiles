if vim.g.loaded_ts_search == 1 then
    return
end
vim.g.loaded_ts_search = 1

vim.api.nvim_create_user_command("TSSearch", function(params)
    vim.cmd("split")
    vim.cmd("lcd ~/.local/lib/npm/lib/node_modules/typescript/lib/")
    vim.cmd("te rg -wi '" .. params.args .. "' -g 'lib.*.d.ts'")
end, {nargs = 1})