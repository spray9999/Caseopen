local vRP = nil
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local webhook = module("vrp","cfg/webhooks")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","ak4y-caseOpening")


local lastItems = {}

-- Functions

vRP:registerCallback('ak4y-caseOpening:getPlayerDetails', function(source, cb)
    local user_id = vRP.getUserId(source)
    local firstName = GetPlayerName(source)
    local callbackData = {}
    local result = ExecuteSql("SELECT * FROM ak4y_caseopening WHERE user_id = '"..user_id.."'")

    if result[1] == nil then    
        ExecuteSql("INSERT INTO ak4y_caseopening SET user_id = '"..user_id.."', goldcoin = '0', silvercoin = '0'")
        callbackData = {
            goldcoin = 0,
            silvercoin = 0,
            apiKey = steamApiKey,
            lastItems = lastItems,
            charName = firstName,
        }
    else
        callbackData = {
            goldcoin = result[1].goldcoin,
            silvercoin = result[1].silvercoin,
            apiKey = steamApiKey,
            lastItems = lastItems,
            charName = firstName,
        }
    end
    cb(callbackData)
end)



vRP:registerCallback('ak4y-caseOpening:selectedCaseOpen', function(source, cb, caseData, itemData)
    local user_id = vRP.getUserId(source)

    local result = ExecuteSql("SELECT * FROM ak4y_caseopening WHERE user_id = '"..user_id.."'")
    if result[1] ~= nil then    
        if caseData.priceType == "GC" then 
            if result[1].goldcoin >= caseData.price then 
                ExecuteSql("UPDATE ak4y_caseopening SET goldcoin = goldcoin - '"..caseData.price.."' WHERE user_id = '"..user_id.."'")
                SendToDiscord("User ID: ``"..user_id.."``\nCASE UNIQUE ID: ``"..caseData.uniqueId.."``\nCASE OPENED!")
                cb(true)
            else
                cb(false)
            end
        else
            if result[1].silvercoin >= caseData.price then 
                ExecuteSql("UPDATE ak4y_caseopening SET silvercoin = silvercoin - '"..caseData.price.."' WHERE user_id = '"..user_id.."'")
                SendToDiscord("User ID: ``"..user_id.."``\nCASE UNIQUE ID: ``"..caseData.uniqueId.."``\nCASE OPENED!")
                cb(true)
            else
                cb(false)
            end
        end
    else
        cb(false)
    end
end)

vRP:registerCallback('ak4y-caseOpening:collectItem', function(source, cb, itemData, caseData)  
    local user_id = vRP.getUserId(source)
    local firstName = GetPlayerName(source)
    local lastName = ""
    
    local itemValue = itemData.itemType
    local itemType = itemData.giveItemType
    local itemName = itemData.itemName
    local itemCount = itemData.itemCount
    local itemLabel = itemData.label
    local itemImage = itemData.image
    local caseName = caseData.label

    local lastRegister = false 
    local serverNotify = false
    for k, v in pairs(AK4Y.LastItemCategories) do 
        if v == itemValue then 
            lastRegister = true
        end
    end  
    for k, v in pairs(AK4Y.ServerNotifyCategories) do 
        if v == itemValue then 
            serverNotify = true
        end
    end  
    
    if serverNotify then 
        TriggerClientEvent('ak4y-caseOpening:serverNotif', -1, {firstName = firstName, lastName = lastName, itemLabel = itemLabel, itemImage = itemImage})
    end

    if lastRegister then 
        local idData = #lastItems + 1
    
        if #lastItems > 9 then 
            local lowestIndex = 99999
            for k, v in pairs(lastItems) do
                local indexim = v.id
                if indexim < lowestIndex then 
                    lowestIndex = indexim
                end
            end
            for k, v in pairs(lastItems) do 
                if v.id == lowestIndex then 
                    lastItems[k] = nil
                end
            end
        end
    
        local indexData = #lastItems + 1
        lastItems[indexData] = {}
        lastItems[indexData]["id"] = idData
        lastItems[indexData]["itemLabel"] = itemLabel
        lastItems[indexData]["itemImage"] = itemImage
        lastItems[indexData]["itemType"] = itemValue
        lastItems[indexData]["caseName"] = caseName
        lastItems[indexData]["firstname"] = firstName
        lastItems[indexData]["lastname"] = lastName
    end

    
    if itemType == "item" then 
        xPlayer.addInventoryItem(itemName, itemCount)
    elseif itemType == "weapon" then 
        if AK4Y.WeaponsAreItem then 
            for i = 1, count, 1 do 
                xPlayer.addInventoryItem(itemName, 1)
            end
        else
            xPlayer.addWeapon(itemName, itemCount)
        end
    elseif itemType == "vehicle" then
        for i = 1, itemCount do 
            local user_id = vRP.getUserId(source)
            local plate = GeneratePlate()
            local vehicleData = {}
            vehicleData.model = GetHashKey(itemName)
            vehicleData.plate = plate
            ExecuteSql("INSERT INTO vrp_user_vehicles (user_id, vehicle_plate, vehicle, veh_type) VALUES ('"..user_id.."', '"..plate.."', '"..json.encode(vehicleData).."', 'car')")
        end
    elseif itemType == "money" then 
xPlayer.addAccountMoney('money', itemCount)

    end
    SendToDiscord("User ID: ``"..user_id.."``\nITEM: ``"..itemName.."``\nCOUNT: ``"..itemCount.."``\nITEM TYPE: ``"..itemType.."``\nITEM COLLECTED!")
    callBackData = {
        state = true,
        lastItems = lastItems,
    }
    cb(callBackData)  
end)

vRP:registerCallback('ak4y-caseOpening:sellItem', function(source, cb, caseData, itemData)
    local user_id = vRP.getUserId(source)

    local result = ExecuteSql("SELECT * FROM ak4y_caseopening WHERE user_id = '"..user_id.."'")
    if result[1] ~= nil then    
        if caseData.priceType == "GC" then 
            ExecuteSql("UPDATE ak4y_caseopening SET goldcoin = goldcoin + '"..itemData.sellCredit.."' WHERE user_id = '"..user_id.."'")
            cb(true)
        else
            ExecuteSql("UPDATE ak4y_caseopening SET silvercoin = silvercoin + '"..itemData.sellCredit.."' WHERE user_id = '"..user_id.."'")
            cb(true)
        end
        SendToDiscord("User ID: ``"..user_id.."``\nCREDIT: ``"..itemData.sellCredit.."``\nPRICE TYPE: ``"..caseData.priceType.."``\nITEM SELLED!")
    else
        cb(false)
    end
end)


local NumberCharset = {}
local Charset = {}

for i = 48, 57 do table.insert(NumberCharset, string.char(i)) end

for i = 65, 90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

function GeneratePlate()
    local generatedPlate
    local doBreak = false

    while true do
        Citizen.Wait(2)
        math.randomseed(GetGameTimer())
        generatedPlate = string.upper(GetRandomLetter(3) .. GetRandomNumber(3))

        local result = ExecuteSql("SELECT 1 FROM vrp_user_vehicles WHERE vehicle_plate = '"..generatedPlate.."'")
        if result[1] == nil then
            doBreak = true
        end

        if doBreak then
            break
        end
    end

    return generatedPlate
end

function GetRandomNumber(length)
    Citizen.Wait(1)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
    else
        return ''
    end
end

function GetRandomLetter(length)
    Citizen.Wait(1)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
    else
        return ''
    end
end

vRP:registerCallback('ak4y-caseOpening:sendInput', function(user_id, cb, data)
    local user_id = vRP.getUserId(source)
    local inputData = data.input
    local result = ExecuteSql("SELECT * FROM ak4y_caseopening_codes WHERE code = '"..inputData.."'")
    if result[1] ~= nil then
        ExecuteSql("DELETE FROM ak4y_caseopening_codes WHERE code = '"..inputData.."'")
        ExecuteSql("UPDATE ak4y_caseopening SET goldcoin = goldcoin + '"..result[1].creditCount.."' WHERE user_id = '"..user_id.."'")
        SendToDiscord("User ID: ``"..user_id.."``\nCODE: ``"..inputData.."``\nCREDIT: ``"..result[1].creditCount.."``\nCode used!")
        cb(result[1].creditCount)
    else
        cb(false)
    end
end)

RegisterNetEvent('ak4y-caseOpening:addGoldCoin')
AddEventHandler('ak4y-caseOpening:addGoldCoin', function(amount)
    local user_id = vRP.getUserId(source)
    local deger = tonumber(amount)
    ExecuteSql("UPDATE ak4y_caseopening SET goldcoin = goldcoin + '"..deger.."' WHERE user_id = '"..user_id.."'")
    SendToDiscord("User ID: ``"..user_id.."``\n``"..deger.."``\n**Gold Coin ADDED!**")
end)

RegisterNetEvent('ak4y-caseOpening:addSilverCoin')
AddEventHandler('ak4y-caseOpening:addSilverCoin', function(amount)
    local user_id = vRP.getUserId(source)
    local deger = tonumber(amount)
    ExecuteSql("UPDATE ak4y_caseopening SET silvercoin = silvercoin + '"..deger.."' WHERE user_id = '"..user_id.."'")
    SendToDiscord("User ID: ``"..user_id.."``\n``"..deger.."``\n**Silver Coin ADDED!**")
end)

RegisterCommand('purchase_caseopening_credit', function(source, args)
    local user_id = vRP.getUserId(source)
    if user_id then
        local dec = json.decode(args[1])
        local tbxid = dec.transid
        local credit = dec.credit
        while inProgress do
            Wait(1000)
        end
        inProgress = true
        local result = ExecuteSql("SELECT * FROM ak4y_caseopening_codes WHERE code = '"..tbxid.."'")
        if result[1] == nil then
            ExecuteSql("INSERT INTO ak4y_caseopening_codes (code, creditCount) VALUES ('"..tbxid.."', '"..credit.."')")
            SendToDiscord("Code: ``"..tbxid.."``\nCredit: ``"..credit.."``\nsuccessfuly into your database!")
        end
        inProgress = false  
    end
end)


function SendToDiscord(name, message, color)
    local user_id = vRP.getUserId(source)
    local user = vRP.getUserSource(user_id)

    local embed = {
        {
            ["color"] = color,
            ["title"] = "**" .. name .. "**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = "AK4Y CASEOPENING",
            },
        },
    }

    vRP.sendDiscordMessage(DISCORD_WEBHOOK, user, " ", json.encode({embeds = embed}))
end


function ExecuteSql(query)
    local IsBusy = true
    local result = nil
    if AK4Y.Mysql == "oxmysql" then
        if MySQL == nil then
            exports.oxmysql:execute(query, function(data)
                result = data
                IsBusy = false
            end)
        else
            MySQL.query(query, {}, function(data)
                result = data
                IsBusy = false
            end)
        end
    elseif AK4Y.Mysql == "ghmattimysql" then
        exports.ghmattimysql:execute(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    elseif AK4Y.Mysql == "mysql-async" then   
        MySQL.Async.fetchAll(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    end
    while IsBusy do
        Citizen.Wait(0)
    end
    return result
end