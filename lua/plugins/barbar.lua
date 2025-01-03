return {
'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
      vim.keymap.set('n','<A-,>', '<Cmd>BufferPrevious<CR>', {})
      vim.keymap.set('n','<A-.>', '<Cmd>BufferNext<CR>', {})
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = true,
      -- insert_at_start = true,
      -- …etc.
      -- Set the filetypes which barbar will offset itself for
      sidebar_filetypes = {
      ['neo-tree'] = true
      }
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
