# bindTo: a user this entity to be bind to
execute store result score @s id_0 run data get entity @e[tag=bindTo,limit=1] UUID[0]
execute store result score @s id_1 run data get entity @e[tag=bindTo,limit=1] UUID[1]
execute store result score @s id_2 run data get entity @e[tag=bindTo,limit=1] UUID[2]
execute store result score @s id_3 run data get entity @e[tag=bindTo,limit=1] UUID[3]
tag @e[tag=bindTo] remove bindTo