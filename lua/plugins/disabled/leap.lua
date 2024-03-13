return {
  'ggandor/leap.nvim',
  event = 'VeryLazy',
  opts = {
  },
  config = function()
    require('leap').create_default_mappings()
  end
}
