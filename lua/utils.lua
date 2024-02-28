local M = {}

-- Default key options.
local function key_opts(desc, buffer, opts)
    local default_opts = {
        buffer = buffer,
        desc = desc,
        noremap = true,
        nowait = true,
        silent = true
    }

    return vim.tbl_extend('force', default_opts, opts or {})
end

-- Set mapping for a key with default options.
function M.set_key(mode, lhs, rhs, desc, buffer, opts) -- todo: merge buffer and opts.
    local opts = key_opts(desc, buffer, opts)

    -- Check if the mapping already exists
    local is_mapped = vim.fn.maparg(lhs, mode) ~= ''

    if not is_mapped then
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
