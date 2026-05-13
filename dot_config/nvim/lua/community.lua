-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.recipes.vscode" },

  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.motion.mini-ai" },
  -- import/override with your plugins folder
}
