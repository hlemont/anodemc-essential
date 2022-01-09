summon item ~ ~ ~ {PickupDelay:0, Tags:["giveItem", "tradeTraded"],Item:{id:"minecraft:diamond",Count:1b},Owner:[I;0,0,0,0]}
data modify entity @e[tag=tradeTraded,limit=1] Item set from storage trade toItem
tag @e[tag=tradeTraded] remove tradeTraded