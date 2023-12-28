function log( ... )
    local args = { ... }
    local appendStr = ''
    for _, v in ipairs(args) do
        appendStr = appendStr .. ' ' .. tostring(v or ' ')
    end

    print( "[^1ESX^8$^2P^4@^2TCH^0] :" .. appendStr )
end

AddEventHandler('esx:getSharedObject', function ( callback )
    local Invoke = GetInvokingResource()
    log( "`esx:getSharedObject` trigger from `" .. Invoke .. '`' )
    callback( ESX )
    log( "Handled. ignore esx warning")

    CancelEvent()
end)


CreateThread(function()
    log("LEGACY PATCH")
    log("Handle `esx:getSharedObject` event for new es_extended")
end)