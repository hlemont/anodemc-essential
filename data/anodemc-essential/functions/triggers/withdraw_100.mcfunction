scoreboard players set @s balance_delta 100
execute if score @s balance_delta > @s balance run scoreboard players operation @s balance_delta = @s balance
execute if score @s balance_delta matches 1.. run scoreboard players operation @s balance -= @s balance_delta
execute if score @s balance_delta matches 1.. run scoreboard players operation @s give.amount += @s balance_delta
scoreboard players set @s balance_delta 0
scoreboard players set @s withdraw_100 0
scoreboard players enable @s withdraw_100