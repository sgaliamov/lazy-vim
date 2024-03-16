return {
  'nvim-tree/nvim-web-devicons',
  event = 'VeryLazy',
  opts = {
    override = {
      gql = { -- todo: test or use require("nvim-web-devicons").set_icon
        icon = '',
        color = '#e535ab',
        cterm_color = '199',
        name = 'GraphQL',
      }
    }
  }
}
