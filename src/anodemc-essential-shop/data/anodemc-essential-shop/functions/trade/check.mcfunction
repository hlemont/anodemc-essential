# store item data
data modify storage trade toItem set from entity @e[tag=trader_current,limit=1] HandItems[1]
data modify storage trade fromItem set from entity @e[tag=trader_current,limit=1] HandItems[0]
data modify storage trade holdingItem set from entity @s SelectedItem

execute store result score @s trade.count run data get storage trade holdingItem.Count
execute store result score @e[tag=trader_current,limit=1] trade.count run data get storage trade fromItem.Count
scoreboard players operation @s trade.count -= @e[tag=trader_current,limit=1] trade.count
execute store success score @s trade.differentItem run data modify storage trade holdingItem.id set from storage trade fromItem.id
tag @s remove canTrade
execute if score @s trade.count matches 0.. if score @s trade.differentItem matches 0 run tag @s add canTrade