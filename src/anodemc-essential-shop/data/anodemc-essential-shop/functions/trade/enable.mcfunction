tag @s add bindTo
execute as @e[tag=trader,limit=1,sort=nearest] run function anodemc-essential:util/bind
tag @e[tag=trader,limit=1,sort=nearest] add trader_active