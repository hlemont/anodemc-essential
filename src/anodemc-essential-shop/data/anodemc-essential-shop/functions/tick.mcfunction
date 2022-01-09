# cleanup
function anodemc-essential-shop:trade/cleanup

# run on_join
execute as @a[tag=!anodemc-essential-shop.join] run function anodemc-essential-shop:on_join

# triggers
execute as @a[scores={trade=1..}] run function anodemc-essential-shop:triggers/trade

#timers
execute as @a[scores={trade.delay=1..}] run scoreboard players remove @s trade.delay 1