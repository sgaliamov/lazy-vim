return {
  'gbprod/yanky.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    highlight = { timer = 250 },
  },
  -- keys = {} -- keys overriding breaks default bindings.
}
