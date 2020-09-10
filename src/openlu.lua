local _M = {}

-- Include plugin
function _M.runPlugin(pluginName)

    local pluginInclude = require(pluginName)

    pluginInclude.init()
    return pluginInclude
end

return _M
