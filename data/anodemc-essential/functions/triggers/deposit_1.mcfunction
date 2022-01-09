execute store result score @s balance_delta run clear @s minecraft:diamond 1
scoreboard players operation @s balance += @s balance_delta
scoreboard players set @s balance_delta 0
scoreboard players set @s deposit_1 0
scoreboard players enable @s deposit_1