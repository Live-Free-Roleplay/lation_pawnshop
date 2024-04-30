Config = {} -- Do not alter

-- 🔎 Looking for more high quality scripts?
-- 🛒 Shop Now: https://lationscripts.com/github
-- 💬 Join Discord: https://discord.gg/9EbY4nM5uu
Config.YouFoundTheBestScripts = false

-- Use only if needed, directed by support or know what you're doing
-- Notice: enabling debug features will significantly increase resmon
-- And should always be disabled in production
Config.Debug = false

-- Do you want to be notified via server console if an update is available?
-- True if yes, false if no
Config.VersionCheck = true

-- Target system, available options are: 'ox_target', 'qb-target', 'qtarget', 'custom' & 'none'
-- 'custom' needs to be added to client/functions.lua
-- If 'none' then TextUI is used instead of targeting
Config.Target = 'ox_target'

-- Notification system, available options are: 'ox_lib', 'esx', 'qb', 'okok' & 'custom'
-- 'custom' needs to be added to client/functions.lua
Config.Notify = 'ox_lib'

-- If using TextUI (Config.Target = 'none') then what key do you want to open the shop?
-- Default is 38 (E), find more control ID's here: https://docs.fivem.net/docs/game-references/controls/
Config.Interact = 38

-- Manage & create your pawn shops here
Config.Shops = {
    ['morningwood'] = { -- Unique identifier for this shop
        name = 'Morningwood Pawn & Jewelry', -- Shop name
        slots = 25, -- How many slots are available
        weight = 100000, -- How much weight is available
        coords = vec4(-1459.4126, -413.5105, 35.7555, 161.3566), -- Where this shop exists
        radius = 1.0, -- How large of a circle zone radius (for targeting only)
        spawnPed = false, -- Spawn a ped to interact with here?
        pedModel = 'a_m_y_beach_02', -- If spawnPed = true, what ped model?
        -- You can limit the hours at which the shop is available here
        -- Min is the earliest the shop is available (default 06:00AM)
        -- Max is the latest the shop is available (detault 21:00 aka 9PM)
        -- If you want it available 24/7, set min to 1 and max to 24
        hour = { min = 1, max = 24 },
        account = 'black_money', -- Give 'cash', 'bank' or 'dirty' money when selling here?
        allowlist = {
            -- What items can be sold here
            -- Any item not in this list, cannot be sold here
            -- ['itemSpawnName'] = { label = 'Item Name', price = sellPrice }
            ['earings'] = { label = 'Earings', price = 100 },
            ['bong'] = { label = 'Bong', price = 50 },
            ['watch'] = { label = 'Watch', price = 90 },
            ['gold_watch'] = { label = 'Gold Watch', price = 350 },
            ['gold_bracelet'] = { label = 'Gold Bracelet', price = 250 },
            ['necklace'] = { label = 'Necklace', price = 150 },
            ['pogo'] = { label = 'Art Piece', price = 400 },
            ['romantic_book'] = { label = 'Romantic Book', price = 15 },
            ['diamond'] = { label = 'Diamond', price = 700 },
            ['gold'] = { label = 'Gold Nuggets', price = 400 },
            ['emerald'] = { label = 'Emerald', price = 500 },
            ['gold_bar'] = { label = 'Gold Bar', price = 600 },
            -- Add & remove items here as desired
            -- Be sure to follow the same format as above
        },
        -- If placeholders = true then the "slots" amount above will be overridden
        -- This option will fill the shop with "display" items, and only
        -- Display items that are possible to sell here. If false, it will be
        -- An empty inventory, and the "slots" amount above will not be overridden
        placeholders = true,
        blip = {
            enabled = false, -- Enable or disable the blip for this shop
            sprite = 59, -- Sprite ID (https://docs.fivem.net/docs/game-references/blips/)
            color = 0, -- Color (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            scale = 0.8, -- Size/scale
            label = 'Pawn Shop' -- Label
        }
    }
}