local M = {}

-- Default key options.
local function key_opts(desc, buffer_or_opts)
    local is_table = type(buffer_or_opts) == 'table'
    local default_opts = {
        buffer = is_table and nil or buffer_or_opts,
        desc = desc,
        noremap = true,
        nowait = true,
        silent = true
    }

    return vim.tbl_extend('force', default_opts, is_table and buffer_or_opts or {})
end

-- Set mapping for a key with default options.
-- If it's required to setup and a buffer and options, then pass a buffer inside options.
function M.set_key(mode, lhs, rhs, desc, buffer_or_opts, force)
    local opts = key_opts(desc, buffer_or_opts)
    local map = force or vim.fn.maparg(lhs, mode) == ''

    if map then
        vim.keymap.set(mode, lhs, rhs, opts)
    else
        error('Mapping for "' .. lhs .. '" in mode "' .. mode .. '" already exists.') -- todo: show at startup.
    end
end

-- Set multiple mappings.
function M.set_keys(mode, mappings, buffer)
    for keys, mapping in pairs(mappings) do
        M.set_key(mode, keys, mapping[1], mapping[2], buffer)
    end
end

return M
