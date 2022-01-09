item replace entity @s weapon with air
summon item ~ ~ ~ {PickupDelay:0, Tags:["giveItem", "tradeChanges"],Item:{id:"minecraft:diamond",Count:1b},Owner:[I;0,0,0,0]}
data modify entity @e[tag=tradeChanges,limit=1] Item.id set from storage trade fromItem.id
execute store result entity @e[tag=tradeChanges,limit=1] Item.Count byte 1 run scoreboard players get @s trade.count
tag @e[tag=tradeChanges] remove tradeChanges