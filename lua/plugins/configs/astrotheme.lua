return function(_, _)
  require("astrotheme").setup({
    palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`

    highlights = {
      global = {             -- Add or modify hl groups globaly, theme specific hl groups take priority.
        modify_hl_groups = function(hl, c)
          hl.PluginColor4 = {fg = c.my_grey, bg = c.none }
          hl.Normal.bg = c.none
        end,
      },
    },
  })
end
