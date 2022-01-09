scoreboard players operation @s give.stacks = @s give.amount
scoreboard players operation @s give.remains = @s give.amount
scoreboard players operation @s give.stacks /= anodemc-essential STACK
scoreboard players operation @s give.remains %= anodemc-essential STACK

execute if score @s give.stacks matches 1.. run function anodemc-essential:give/stacks
execute if score @s give.remains matches 1.. run function anodemc-essential:give/remains

function anodemc-essential:give/setowner

scoreboard players reset @s give.stacks
scoreboard players reset @s give.remains
scoreboard players reset @s give.amount
