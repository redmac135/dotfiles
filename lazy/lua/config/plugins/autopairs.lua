-- automatically intent pairs such as
-- <div></div>
-- to
-- <div>
-- --tab
-- </div>
return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = true,
  -- use opts = {} for passing setup options
  -- this is equivalent to setup({}) function
}
