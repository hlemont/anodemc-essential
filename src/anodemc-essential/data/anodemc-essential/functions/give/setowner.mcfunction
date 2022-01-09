tag @s add giveOwner
execute as @e[type=item,tag=giveItem,sort=nearest] run data modify entity @s Owner[0] set from entity @e[tag=giveOwner,limit=1] UUID[0]
execute as @e[type=item,tag=giveItem,sort=nearest] run data modify entity @s Owner[1] set from entity @e[tag=giveOwner,limit=1] UUID[1]
execute as @e[type=item,tag=giveItem,sort=nearest] run data modify entity @s Owner[2] set from entity @e[tag=giveOwner,limit=1] UUID[2]
execute as @e[type=item,tag=giveItem,sort=nearest] run data modify entity @s Owner[3] set from entity @e[tag=giveOwner,limit=1] UUID[3]
tag @a remove giveItem
tag @s remove giveOwner