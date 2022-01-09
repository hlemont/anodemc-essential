tag @e[tag=trader_active] add candidate
function anodemc-essential:util/find
tag @e[tag=found] add trader_current
tag @e[tag=found] remove found

# check if holding any item
execute store success score @s trade.isHoldingItem run data get entity @s SelectedItem

# when holding any item
execute if score @s trade.isHoldingItem matches 1 run function anodemc-essential-shop:trade/check
execute if score @s trade.isHoldingItem matches 1 as @s[tag=canTrade] at @s run function anodemc-essential-shop:give/changes
execute if score @s trade.isHoldingItem matches 1 as @s[tag=canTrade] at @s run function anodemc-essential-shop:give/traded
execute if score @s trade.isHoldingItem matches 1 run function anodemc-essential:give/setowner

# when not holding any item
execute if score @s trade.isHoldingItem matches 0 run tellraw @s {"text":"\n[Trade Information]", "bold":true, "color":"yellow"}
execute if score @s trade.isHoldingItem matches 0 run tellraw @s [{"nbt":"HandItems[0].id", "entity":"@e[tag=trader_current,limit=1]","hoverEvent":{"action":"show_text", "contents":{"nbt":"HandItems[0].tag.display.Name", "entity":"@e[tag=trader_current,limit=1]", "interpret":true}}}, " × ", {"nbt":"HandItems[0].Count", "entity":"@e[tag=trader_current,limit=1]"}]
execute if score @s trade.isHoldingItem matches 0 run tellraw @s [" → ", {"nbt":"HandItems[1].id", "entity":"@e[tag=trader_current,limit=1]","hoverEvent":{"action":"show_text", "contents":{"nbt":"HandItems[1].tag.display.Name", "entity":"@e[tag=trader_current,limit=1]", "interpret":true}}}, " × ", {"nbt":"HandItems[1].Count", "entity":"@e[tag=trader_current,limit=1]"}]

execute as @e[tag=trader_current] run function anodemc-essential-shop:trade/disable
tag @e[tag=trader_current] remove trader_current