AK4Y = {}

AK4Y.Framework = "vrp" -- / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
AK4Y.OpenCommand = "caseOpening"

AK4Y.WeaponsAreItem = false -- If your weapons are item then you should set this TRUE.

AK4Y.NeededPlayTime = 60 -- MINUTES
AK4Y.PlayTimeRewardType = "GOLDCOIN" -- GOLDCOIN OR SILVERCOIN
AK4Y.PlayTimeRewardCoin = 10 

AK4Y.WebsiteLink = "https://www.google.com/"
AK4Y.DiscordLink = "https://discord.gg/ak4y/"

-- ITEM TYPES : "common", "uncommon", "rare", "mythical", "legendary"
AK4Y.LastItemCategories = {"uncommon", "rare", "mythical", "legendary"} -- When items of the type written on the left are won, they appear in the recently won items tab
AK4Y.ServerNotifyCategories = {"uncommon", "mythical", "legendary"} -- When items of the type written on the left are won, a notification is sent to the entire server

AK4Y.Translate = {
    title1 = "CASE",
    title2 = "OPENING",
    premium = "PREMIUM",
    standard = "STANDARD",
    cases = "CASES",
    website = "WEBSITE",
    discord = "DISCORD",
    premiumCases = "PREMIUM CASES",
    standardCases = "STANDARD CASES",
    openCase = "OPEN CASE",
    openFast = "OPEN FAST",
    coinShopTitle = "GC SHOP",
    new = "NEW",
    goBack = "GO BACK",
    caseItems = "CASE ITEMS",
    items = "ITEMS",
    congratulations = "CONGRATULATIONS",
    congDescription = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum assumenda, a minima reiciendis modi quo expedita dignissimos?",
    collect = "COLLECT",
    sell = "SELL",
    accept = "ACCEPT",
    creditLoaded = "Credit Successfully LOADED",
    failed = "FAILED",
    youDntHaveEnoughCredit = "YOU DONT HAVE ENOUGH CREDIT!",
}


-- giveItemType's = "item", "vehicle", "money"
-- items in the case should have a chance total of 100 !! IMPORTANT !! IMPORTANT !! IMPORTANT !!
AK4Y.PremiumCases = {
    {
        uniqueId = 1, -- IDs must be different and sequential
        label = "Phantom Case",
        price = 150, 
        priceType = "GC", -- GC OR SC
        caseTheme = "red", -- red, blue, orange, purple, green
        caseType = "premium", -- do not touch!
        isNew = true,
        items = { -- giveItemType's = "item", "vehicle", "money", "weapon"
                  -- items in the case should have a chance total of 100 !! IMPORTANT !! IMPORTANT !! IMPORTANT !!
            { itemName = "lockpick", label = "LOCKPICK", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/lockpick.png" },
            { itemName = "advancedlockpick", label = "LOCKPICK", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/advancedlockpick.png" },
            { itemName = "firstaid", label = "AID KIT", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/firstaid.png" },
            { itemName = "joint", label = "JOINT", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/joint.png" },
            { itemName = "pistol_ammo", label = "PISTOL AMMO", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/pistol_ammo.png" },
            { itemName = "radio", label = "RADIO", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/radio.png" },
            { itemName = "pistol_extendedclip", label = "EXTENDED CLIP", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/pistol_extendedclip.png" },
            { itemName = "security_card_02", label = "SECURITY CARD", chance = 7.5, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/security_card_02.png" },
            { itemName = "weapon_knife", label = "KNIFE", chance = 5, sellCredit = 40, itemType = "uncommon", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_knife.png" },
            { itemName = "weapon_crowbar", label = "CROWBAR", chance = 5, sellCredit = 40, itemType = "uncommon", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_crowbar.png" },
            { itemName = "weapon_knuckle", label = "KNUCKLE", chance = 5, sellCredit = 40, itemType = "uncommon", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_knuckle.png" },
            { itemName = "armor", label = "ARMOR", chance = 5, sellCredit = 40, itemType = "uncommon", itemCount = 1, giveItemType = "item", image = "./images/items/armor.png" },
            { itemName = "weapon_combatpistol", label = "COMBAT PISTOL", chance = 5, sellCredit = 100, itemType = "rare", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_combatpistol.png" },
            { itemName = "weapon_heavypistol", label = "HEAVY PISTOL", chance = 5, sellCredit = 100, itemType = "rare", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_heavypistol.png" },
            { itemName = "weapon_appistol", label = "AP PISTOL", chance = 5, sellCredit = 100, itemType = "rare", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_appistol.png" },
            { itemName = "weapon_smg", label = "SMG", chance = 2, sellCredit = 150, itemType = "mythical", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_smg.png" },
            { itemName = "weapon_combatpdw", label = "COMBAT PDW", chance = 2, sellCredit = 150, itemType = "mythical", itemCount = 1, giveItemType = "weapon", image = "./images/items/weapon_combatpdw.png" },
            { itemName = "zentorno", label = "ZENTORNO", chance = 1, sellCredit = 250, itemType = "legendary", itemCount = 1, giveItemType = "vehicle", image = "./images/items/zentorno.png" },
        },
    },
    {
        uniqueId = 2, -- IDs must be different and sequential
        label = "Vehicle Case",
        price = 300,
        priceType = "GC", -- GC OR SC
        caseTheme = "orange", -- red, blue, orange, purple, green
        caseType = "premium",
        isNew = true, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "issi", label = "ISSI", chance = 10, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "vehicle", image = "./images/items/issi.png" },
            { itemName = "bf400", label = "BF400", chance = 10, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "vehicle", image = "./images/items/bf400.png" },
            { itemName = "sentinel", label = "SENTINEL", chance = 10, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "vehicle", image = "./images/items/sentinel.png" },
            { itemName = "blade", label = "BLADE", chance = 10, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "vehicle", image = "./images/items/blade.png" },
            { itemName = "baller", label = "BALLER", chance = 10, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "vehicle", image = "./images/items/baller.png" },
            { itemName = "asterope", label = "ASTEROPE", chance = 10, sellCredit = 15, itemType = "common", itemCount = 1, giveItemType = "vehicle", image = "./images/items/asterope.png" },
            { itemName = "dominator", label = "DOMINATOR", chance = 7.5, sellCredit = 40, itemType = "uncommon", itemCount = 1, giveItemType = "vehicle", image = "./images/items/dominator.png" },
            { itemName = "voodoo", label = "VOODOO", chance = 7.5, sellCredit = 40, itemType = "uncommon", itemCount = 1, giveItemType = "vehicle", image = "./images/items/voodoo.png" },
            { itemName = "bati", label = "BATI", chance = 7.5, sellCredit = 40, itemType = "uncommon", itemCount = 1, giveItemType = "vehicle", image = "./images/items/bati.png" },
            { itemName = "elegy2", label = "ELEGY 2", chance = 5, sellCredit = 100, itemType = "rare", itemCount = 1, giveItemType = "vehicle", image = "./images/items/elegy2.png" },
            { itemName = "sultan", label = "SULTAN", chance = 5, sellCredit = 100, itemType = "rare", itemCount = 1, giveItemType = "vehicle", image = "./images/items/sultan.png" },
            { itemName = "hakuchou", label = "HAKUCHOU", chance = 2, sellCredit = 150, itemType = "mythical", itemCount = 1, giveItemType = "vehicle", image = "./images/items/hakuchou.png" },
            { itemName = "schlagen", label = "SCHLAGEN", chance = 2, sellCredit = 150, itemType = "mythical", itemCount = 1, giveItemType = "vehicle", image = "./images/items/schlagen.png" },
            { itemName = "kuruma", label = "KURUMA", chance = 2, sellCredit = 150, itemType = "mythical", itemCount = 1, giveItemType = "vehicle", image = "./images/items/KURUMA.png" },
            { itemName = "t20", label = "T20", chance = 1, sellCredit = 250, itemType = "legendary", itemCount = 1, giveItemType = "vehicle", image = "./images/items/t20.png" },
            { itemName = "zentorno", label = "ZENTORNO", chance = 0.5, sellCredit = 250, itemType = "legendary", itemCount = 1, giveItemType = "vehicle", image = "./images/items/zentorno.png" },
        },
    },
    {
        uniqueId = 3, -- IDs must be different and sequential
        label = "Money Case",
        price = 230,
        priceType = "GC", -- GC OR SC
        caseTheme = "green", -- red, blue, orange, purple, green
        caseType = "premium",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "money", label = "10.000$", chance = 15, sellCredit = 10, itemType = "common", itemCount = 10000, giveItemType = "money", image = "./images/items/money-1.png" },
            { itemName = "money", label = "12.000$", chance = 15, sellCredit = 10, itemType = "common", itemCount = 12000, giveItemType = "money", image = "./images/items/money-1.png" },
            { itemName = "money", label = "13.000$", chance = 15, sellCredit = 10, itemType = "common", itemCount = 13000, giveItemType = "money", image = "./images/items/money-1.png" },
            { itemName = "money", label = "14.000$", chance = 15, sellCredit = 10, itemType = "common", itemCount = 14000, giveItemType = "money", image = "./images/items/money-1.png" },
            { itemName = "money", label = "15.000$", chance = 10, sellCredit = 10, itemType = "uncommon", itemCount = 15000, giveItemType = "money", image = "./images/items/money-1.png" },
            { itemName = "money", label = "16.000$", chance = 10, sellCredit = 10, itemType = "uncommon", itemCount = 16000, giveItemType = "money", image = "./images/items/money-1.png" },
            { itemName = "money", label = "20.000$", chance = 5, sellCredit = 40, itemType = "rare", itemCount = 20000, giveItemType = "money", image = "./images/items/money-2.png" },
            { itemName = "money", label = "23.000$", chance = 5, sellCredit = 40, itemType = "rare", itemCount = 23000, giveItemType = "money", image = "./images/items/money-2.png" },
            { itemName = "money", label = "27.000$", chance = 5, sellCredit = 40, itemType = "rare", itemCount = 27000, giveItemType = "money", image = "./images/items/money-2.png" },
            { itemName = "money", label = "40.000$", chance = 2, sellCredit = 100, itemType = "mythical", itemCount = 40000, giveItemType = "money", image = "./images/items/money-3.png" },
            { itemName = "money", label = "50.000$", chance = 2, sellCredit = 100, itemType = "mythical", itemCount = 50000, giveItemType = "money", image = "./images/items/money-3.png" },
            { itemName = "money", label = "100.000$", chance = 1, sellCredit = 250, itemType = "legendary", itemCount = 100000, giveItemType = "money", image = "./images/items/money-4.png" },
        },
    },
    {
        uniqueId = 4, -- IDs must be different and sequential
        label = "Operation Case",
        price = 400,
        priceType = "GC", -- GC OR SC
        caseTheme = "blue", -- red, blue, orange, purple, green
        caseType = "premium",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 5, -- IDs must be different and sequential
        label = "Chrome Case",
        price = 500,
        priceType = "GC", -- GC OR SC
        caseTheme = "green", -- red, blue, orange, purple, green
        caseType = "premium",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 6, -- IDs must be different and sequential
        label = "Clutch Case",
        price = 600,
        priceType = "GC", -- GC OR SC
        caseTheme = "purple", -- red, blue, orange, purple, green
        caseType = "premium",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 7, -- IDs must be different and sequential
        label = "Gamma Case",
        price = 700,
        priceType = "GC", -- GC OR SC
        caseTheme = "blue", -- red, blue, orange, purple, green
        caseType = "premium",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 8, -- IDs must be different and sequential
        label = "Horizon Case",
        price = 800,
        priceType = "GC", -- GC OR SC
        caseTheme = "red", -- red, blue, orange, purple, green
        caseType = "premium",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
}

AK4Y.StandardCases = {
    {
        uniqueId = 1,
        label = "Standard Case (1)",
        price = 150,
        priceType = "SC", -- GC OR SC
        caseTheme = "nude",
        isNew = true, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 2,
        label = "Standard Case (2)",
        price = 150,
        priceType = "SC", -- GC OR SC
        caseTheme = "nude",
        isNew = true, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 3,
        label = "Standard Case (3)",
        price = 150,
        priceType = "SC", -- GC OR SC
        caseTheme = "nude",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 4,
        label = "Standard Case (4)",
        price = 150,
        priceType = "SC", -- GC OR SC
        caseTheme = "nude",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 5,
        label = "Standard Case (5)",
        price = 150,
        priceType = "SC", -- GC OR SC
        caseTheme = "nude",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 6,
        label = "Standard Case (6)",
        price = 150,
        priceType = "SC", -- GC OR SC
        caseTheme = "nude",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
    {
        uniqueId = 7,
        label = "Standard Case (7)",
        price = 150,
        priceType = "SC", -- GC OR SC
        caseTheme = "nude",
        isNew = false, -- If you set it true, the case will be labeled "new"
        items = {
            { itemName = "weapon_pistol", label = "ITEM 1", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 2", chance = 30, sellCredit = 10, itemType = "common", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 3", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 4", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 5", chance = 10, sellCredit = 15, itemType = "rare", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 6", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 7", chance = 4.5, sellCredit = 20, itemType = "mythical", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
            { itemName = "weapon_pistol", label = "ITEM 8", chance = 0.5, sellCredit = 25, itemType = "legendary", itemCount = 1, giveItemType = "item", image = "./images/items/item.png" },
        },
    },
}

AK4Y.SellCoins = {
    {
        coinCount = 100,
        realPrice = 10,
        directLink = "https://www.google.com/1",
    },
    {
        coinCount = 200,
        realPrice = 20,
        directLink = "https://www.google.com/2",
    },
    {
        coinCount = 300,
        realPrice = 30,
        directLink = "https://www.google.com/3",
    },
    {
        coinCount = 400,
        realPrice = 40,
        directLink = "https://www.google.com/4",
    },
    {
        coinCount = 500,
        realPrice = 50,
        directLink = "https://www.google.com/5",
    },
    {
        coinCount = 600,
        realPrice = 60,
        directLink = "https://www.google.com/6",
    },
    {
        coinCount = 700,
        realPrice = 70,
        directLink = "https://www.google.com/7",
    },
    {
        coinCount = 1000,
        realPrice = 80,
        directLink = "https://ak4y.tebex.io/package/5348821",
    },
    
}

