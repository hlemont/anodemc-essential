# candidate: targets to search from => found: targets found
execute store result score anodemc-essential id_0 run data get entity @s UUID[0]
execute store result score anodemc-essential id_1 run data get entity @s UUID[1]
execute store result score anodemc-essential id_2 run data get entity @s UUID[2]
execute store result score anodemc-essential id_3 run data get entity @s UUID[3]
execute as @e[tag=candidate] if score @s id_0 = anodemc-essential id_0 if score @s id_1 = anodemc-essential id_1 if score @s id_2 = anodemc-essential id_2 if score @s id_3 = anodemc-essential id_3 run tag @s add found
tag @e[tag=candidate] remove candidate