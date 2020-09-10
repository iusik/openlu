local _M = {}

local jsonResult = {}

function _M.init()
    _M.setUtc()
    _M.setDateTimeFormated()
    _M.print()
end


-- Set Datetime
function _M.setDateTimeFormated()

    local pattern = "(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)"

    local dateTimeToConvert = ngx.utctime()

    local year, month, day, hour, minute, seconds = dateTimeToConvert:match(pattern)

    jsonResult["datetime"] = year .. "/" .. month .. '/' .. day .. ' ' .. hour .. ':' .. minute .. ':' .. seconds

end

-- Set UTC
function _M.setUtc()
    jsonResult['utc'] = ngx.time()
end

function _M.print()
    ngx.say(cjson.encode(jsonResult))
    ngx.exit(200)
end

return _M