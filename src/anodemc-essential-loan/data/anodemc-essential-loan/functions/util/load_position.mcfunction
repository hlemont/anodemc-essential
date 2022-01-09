tag @e[tag=savePosition] add candidate
function anodemc-essential:util/find
tp @s @e[tag=found,limit=1]
execute as @e[tag=found,limit=1] run function anodemc-essential:util/unbind
kill @e[tag=found]
