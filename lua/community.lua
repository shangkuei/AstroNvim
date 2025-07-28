-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
    -- Add a colorscheme
  { import = "astrocommunity.colorscheme.catppuccin",
    opts = {
      flavour = "mocha",
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "catppuccin",
    },
  },

  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.recipes.astrolsp-auto-signature-help" },

  -- === Deployment ===
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.helm" },
  { import = "astrocommunity.pack.terraform" },

  -- === Web Development ===
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.nginx" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.vue" },

  -- === Mobile Development ===
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.swift" },

  -- === Systems Programming ===
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.golangci-lint" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.rust" },

  -- === Scripting ===
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.ps1" },
  { import = "astrocommunity.pack.python" },

  -- === Data Formats ===
  { import = "astrocommunity.pack.chezmoi" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.proto" },
  { import = "astrocommunity.pack.quarto" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },

  -- === Utility & Quality of Life ===
  { import = "astrocommunity.git.neogit" },
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/code-runner/overseer-nvim
  -- https://github.com/stevearc/overseer.nvim
  -- :Overseer*
  { import = "astrocommunity.code-runner.overseer-nvim" },
  -- configure diagnostic, telescope, quickfix and loclist
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/diagnostics/trouble-nvim
  -- https://github.com/folke/trouble.nvim
  -- <leader>x
  -- :Trouble*
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- configure argument split join
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/editing-support/mini-splitjoin
  -- https://github.com/echasnovski/mini.splitjoin
  -- gS
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  -- configure DevDocs documentations
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/editing-support/nvim-devdocs
  -- https://github.com/luckasRanarison/nvim-devdocs
  -- <leader>fD
  -- :Devdocs*
  { import = "astrocommunity.editing-support.nvim-devdocs" },
  -- configure sudo support
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/editing-support/suda-vim
  -- https://github.com/lambdalisue/suda.vim
  -- <leader>W
  -- :Suda*
  { import = "astrocommunity.editing-support.suda-vim" },

  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- configure code block split join
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/editing-support/treesj
  -- https://github.com/Wansmer/treesj
  -- <leader>m
  -- :TSJ*
  { import = "astrocommunity.editing-support.treesj" },
  -- configure cycling through diffs for git rev.
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/git/diffview-nvim
  -- https://github.com/sindrets/diffview.nvim
  -- :Diffview*
  { import = "astrocommunity.git.diffview-nvim" },
  -- configure to show function signature
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/lsp/lsp-signature-nvim
  -- https://github.com/ray-x/lsp_signature.nvim
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  -- configure code navigation
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/motion/flash-nvim
  -- https://github.com/folke/flash.nvim
  -- /, ?, f, F, t, T
  { import = "astrocommunity.motion.flash-nvim" },
  -- configure to go forward and backward with brackets
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/motion/mini-bracketed
  -- https://github.com/echasnovski/mini.bracketed
  -- [, ]
  { import = "astrocommunity.motion.mini-bracketed" },
  -- configure to help surround action
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/motion/mini-surround
  -- https://github.com/echasnovski/mini.surround
  -- gz
  { import = "astrocommunity.motion.mini-surround" },
  -- configure clipboard manager
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/register/nvim-neoclip-lua
  -- https://github.com/AckslD/nvim-neoclip.lua
  -- <leader>fy + p (paste), q (replay), d (delete), e (edit)
  { import = "astrocommunity.register.nvim-neoclip-lua" },
  -- configure smooth scrolling
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/scrolling/neoscroll-nvim
  -- https://github.com/karb94/neoscroll.nvim
  -- <C-u>, <C-d>, <C-b>, <C-f>
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  -- configure search highlight
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/search/nvim-hlslens
  -- https://github.com/kevinhwang91/nvim-hlslens
  { import = "astrocommunity.search.nvim-hlslens" },
  -- configure project wide find and replace
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/search/sad-nvim
  -- https://github.com/ray-x/sad.nvim
  { import = "astrocommunity.search.sad-nvim" },
  -- configure test framework
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/test/neotest
  -- https://github.com/nvim-neotest/neotest
  -- <leader>T
  { import = "astrocommunity.test.neotest" },
}
