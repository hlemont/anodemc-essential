execute at @s run summon item ~ ~ ~ {PickupDelay:0, Tags:["giveItem", "giveItemRemain"],Item:{id:"minecraft:diamond",Count:1b},Owner:[I;0,0,0,0]}
execute store result entity @e[type=item,tag=giveItemRemain,limit=1,distance=0..] Item.Count byte 1 run scoreboard players get @s give.remains
tag @a remove giveItemRemain