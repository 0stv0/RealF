---@param name string
AddEventHandler('onResourceStart', function(name)
    if name == GetCurrentResourceName() then
        MySQL.query("CREATE TABLE IF NOT EXISTS users (`id` TEXT, `group` TEXT, `job` LONGTEXT, `char` LONGTEXT, `lastpos` LONGTEXT, `skin` LONGTEXT, `money` LONGTEXT, `inventory` LONGTEXT)", {}, function(result) end)
    end
end)
---@param license string
---@param char table
RegisterNetEvent('realf:sv:createUser', function(license, char)
    local _src = source

end)