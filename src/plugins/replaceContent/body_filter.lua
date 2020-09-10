-- Realtime replace content

local _M = {}

local content = nil

function _M.init()

    _M.setVariables()
    _M.replaceContent()
    _M.overwriteContent()

end

function _M.setVariables()
    content = ngx.arg[1]

    status_chunk = ngx.arg[2]
end

function _M.replaceContent()
    content = content:gsub("#PLACEHOLDER#", [[
    <html lang="en">
        <head>
            <meta charset="utf-8">
        </head>
        <body>
            <h1>Content replaced</h1>
        </body>
    </html>
    ]])
end

function _M.overwriteContent()
    ngx.arg[1] = content
end

return _M