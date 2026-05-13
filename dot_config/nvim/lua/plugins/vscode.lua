if not vim.g.vscode then return {} end -- don't do anything in non-vscode instances

---@type LazySpec
return {
  -- add a few keybindings
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local opt = vim.tbl_get(opts, "options", "opt")
      if opt then opt.cmdheight = 100 end

      local maps = assert(opts.mappings)
      
      -- undo and redo
      maps.n["u"] = function() require("vscode").action "undo" end
      maps.n["<C-r>"] = function() require("vscode").action "redo" end

      -- rename and refactor
      maps.n["<Leader>r"] = function() require("vscode").action "editor.action.rename" end
      -- maps.n["<Leader>r"] = function() require("vscode").with_insert(function() require("vscode").action "editor.action.refactor" end) end
      maps.v["<Leader>r"] = function() require("vscode").with_insert(function() require("vscode").action "editor.action.refactor" end) end
    end,
  },
}