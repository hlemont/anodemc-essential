execute store result score @s balance_delta run clear @s minecraft:diamond 10
scoreboard players operation @s balance += @s balance_delta
scoreboard players set @s balance_delta 0
scoreboard players set @s deposit_10 0
scoreboard players enable @s deposit_10