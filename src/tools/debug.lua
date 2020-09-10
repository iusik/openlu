local debug = {}

function debug:new()
    local obj = {}

    setmetatable(obj, self)

    self.__index = self;

    return obj
end

local function dumpData(var)

    if type(var) == 'table' then
        local s = '{ \n\t'
        for k, v in pairs(var) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dumpData(v) .. ',\n\t'
        end
        return s .. '} \n'
    else
        return tostring(var)
    end
end

function debug:dump(var)

    local ok, type, res = pcall(function()
        return 'Type: ' .. type(var), dumpData(var)
    end)

    ngx.say(type)
    ngx.say(res)

end

function debug:dd(var)

    local ok, type, res = pcall(function()
        return 'Type: ' .. type(var), dumpData(var)
    end)

    ngx.say(type)
    ngx.say(res)
    ngx.exit(200)

end


return debug