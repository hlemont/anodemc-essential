summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["savePosition","created"]}
tp @e[tag=savePosition,tag=created,limit=1] @s
tag @s add bindTo
execute as @e[tag=savePosition,tag=created,limit=1] run function anodemc-essential:util/bind
tag @e[tag=created] remove created