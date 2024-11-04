RealF           = {}
RealF.Functions = {}
RealF.Players   = {}
RealF.Configs   = {}

--[[ Configs ]]
---@return table
RealF.Configs.Jobs   = jobs
---@return table
RealF.Configs.Groups = groups

--[[ Functions ]]
RealF.Functions.RegisterCommand = function()
    
end

--[[ Players ]]
---@return table
RealF.Players.List = {}
---@param _src number
---@return table
RealF.Players.GetById = function(_src)
    local data    = {}
    local license = RealF.Players.List[_src]
    if license ~= nil then
        local result  = MySQL.query.await("SELECT * FROM users WHERE `id` = ?", {license})
        if result[1] then
            data = {
                license = license,
                group   = result[1].group,
                job     = json.decode(result[1].job),
                char    = json.decode(result[1].char),
                lastpos = json.decode(result[1].lastpos),
                skin    = json.decode(result[1].skin),
                money   = json.decode(result[1].money)
            }
        end
    end
    return data
end

--[[ Callbacks ]]
---@param _src number
---@param cb function
lib.callback.register('realf:cb:getData', function()

end)

--[[ Object ]]
---@return table
exports('getObject', function()
    return RealF
end)
