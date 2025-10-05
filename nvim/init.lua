require('config.options')
require('config.plugins')

-- plugin configs
require('config.plugins.snacks')
require('config.plugins.oil')
require('config.plugins.copilot')
require('config.plugins.cmp')
require('config.plugins.mini')
require('config.plugins.lsp')

-- load keymaps last as they include plugin configs
require('config.keymaps')
