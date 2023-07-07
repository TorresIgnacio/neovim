return function(_, _)
  require("astrotheme").setup({
    palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`

    highlights = {
      global = {
                 -- Add or modify hl groups globaly, theme specific hl groups take priority.
        modify_hl_groups = function(hl, c)
          -- hl.Normal.bg = c.none
          -- hl.NormalNC.bg = c.none
          -- hl.NeoTreeNormal.bg = c.none
          -- hl.NeoTreeNormalNC.bg = c.none
        end,
      },
    },
  })
end
