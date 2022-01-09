# summon trader armor stand
summon armor_stand ~ ~-0.6 ~ {NoGravity:1b,ShowArms:1b,Invulnerable:1b,Small:1b,Invisible:1b,Small:1b,Tags:["trader"],HandItems:[{}, {}],DisabledSlots:4144959,Pose:{LeftArm:[270f,0f,0f],RightArm:[270f,0f,0f]}}
tag @s add tradeBuilder
execute as @e[tag=trader,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[tag=tradeBuilder]
execute as @e[tag=trader,limit=1,sort=nearest] at @s run tp ^ ^ ^-0.2
tag @s remove tradeBuilder
data modify entity @e[tag=trader,limit=1,sort=nearest] Rotation[1] set value 0
data modify entity @e[tag=trader,limit=1,sort=nearest] HandItems[0] set from entity @s SelectedItem
data modify entity @e[tag=trader,limit=1,sort=nearest] HandItems[1] set from entity @s Inventory[{Slot:-106b}]

# modify sign content
data modify block ~ ~ ~ Text1 set value '{"text":"[Trade]","bold":true, "color":"yellow"}'
data modify block ~ ~ ~ Text2 set value '[{"nbt":"HandItems[0].Count", "entity": "@e[tag=trader,limit=1,sort=nearest]"}," → ",{"nbt":"HandItems[1].Count", "entity": "@e[tag=trader,limit=1,sort=nearest]"}]'
data modify block ~ ~ ~ Text3 set value '{"text":" ","clickEvent":{"action":"run_command", "value":"execute if score @s trade.delay matches ..0 run function anodemc-essential-shop:trade/enable"}}'
data modify block ~ ~ ~ Text4 set value '{"text":" ","clickEvent":{"action":"run_command", "value":"trigger trade"}}'
scoreboard players set @s trade.delay 40
