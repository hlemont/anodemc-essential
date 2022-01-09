execute at @s run summon item ~ ~ ~ {PickupDelay:0, Tags:["giveItem"],Item:{id:"minecraft:diamond",Count:64b},Owner:[I;0,0,0,0]}
scoreboard players remove @s give.stacks 1
execute if score @s give.stacks matches 1.. run function anodemc-essential:give/stacks