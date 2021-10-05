Config = {
    ChanceToGetItem = 30,
    Items = {'steel','steel','iron','iron','iron','copper','copper','copper','aluminum','aluminum','aluminum','diamond','emerald'},
    Sell = vector3(-631.91, -240.31, 38.123),
    Objects = {
        ['pickaxe'] = 'prop_tool_pickaxe',
    },
    MiningPositions = {
        {coords = vector3(2992.77, 2750.64, 42.78), heading = 209.29},
        {coords = vector3(2983.03, 2750.9, 42.02), heading = 214.08}
    },
}

Strings = {
    ['press_mine'] = 'Press ~INPUT_CONTEXT~ to mine.',
    ['mining_info'] = 'Press ~INPUT_ATTACK~ to chop, ~INPUT_FRONTEND_RRIGHT~ to stop.',
    ['you_sold'] = 'You sold %sx %s for %s',
    ['e_sell'] = 'Press ~INPUT_CONTEXT~ to sell all your mined items.',
    ['someone_close'] = 'There is a player too close to you!',
    ['mining'] = 'Mine'
}

Config.MinedItems = {
    ["emerald"] = {
        ["price"] = 274 
    },
    ["diamond"] = {
        ["price"] = 291 
    },
    ["refinedgold"] = {
        ["price"] = 159 
    },  
}