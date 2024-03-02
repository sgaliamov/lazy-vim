--[[
    CHAR	MODE
    <Space>	Normal, Visual, Select and Operator-pending
    !       Insert and Command-line
    c       Command-line
    i       Insert
    l       ":lmap" mappings for Insert, Command-line and Lang-Arg
    n       Normal
    o       Operator-pending
    s       Select
    t       Terminal-Job
    v       Visual and Select
    x       Visual
]]

local M = {}

--- Create key options.
--- @param description string is mandatory
--- @param buffer_or_opts table | number | nil
--- @return any
local function key_opts(description, buffer_or_opts)
    local is_opts = type(buffer_or_opts) == 'table'
    local is_buffer = type(buffer_or_opts) == 'number'

    local default_opts = {
        buffer = is_buffer and buffer_or_opts,
        desc = description,
        noremap = true,
        nowait = true,
        silent = true
    }

    return vim.tbl_extend('force', default_opts, is_opts and buffer_or_opts or {})
end

--- Check if a key binding is already mapped in the specified modes.
--- @param lhs string The key binding.
--- @param modes string | string[] Modes to check.
--- @return boolean true if used
local function is_used(lhs, modes)
    modes = type(modes) == 'table' and modes or { modes }
    local timer = vim.loop.new_timer()

    for _, mode in ipairs(modes) do
        if vim.fn.maparg(lhs, mode) ~= '' then
            timer:start(1000, 0, function() -- todo: find better way to notify errors
                vim.notify('Mapping for "' .. lhs .. '" in mode "' .. mode .. '" already exists. The binding is ignored.', 4)
            end)
            return true
        end
    end

    return false
end

--- Set mapping for a key with default options.
--- If it's required to setup and a buffer and options and a descption, then pass a buffer and a descrioption inside options.
--- comment
--- @param lhs string
--- @param rhs string | function
--- @param description string is mandatory
--- @param buffer_or_opts table | number | nil
--- @param modes string | string[] | nil Normal, Visual, Select, Operator-pending if `nil`
--- @param force boolean | nil
function M.map(lhs, rhs, description, buffer_or_opts, modes, force)
    modes = modes or { 'n', 'v', 'o' }
    if not force and is_used(lhs, modes) then
        return
    end

    local opts = key_opts(description, buffer_or_opts)
    vim.keymap.set(modes, lhs, rhs, opts)
end

--- Set multiple mappings.
--- @param mappings any example: { [lhs] = { rhs, desc, opts = { buffer = buf }, modes = {'!'}, force = true } };
--- where `modes` is a string or a table; Normal, Visual, Select, Operator-pending if `nil`.
--- `opts` may have a buffer.
function M.map_keys(mappings)
    for lhs, mapping in pairs(mappings) do
        local modes = mapping.modes or mapping.m -- todo: maybe better merge.

        M.map(lhs, mapping[1], mapping[2], mapping.opts, modes, mapping.force)
    end
end

return M
