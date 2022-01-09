# run on_join
execute as @a[tag=!anodemc-essential.join] run function anodemc-essential:on_join

# triggers
execute as @a[scores={deposit_1=1..}] run function anodemc-essential:triggers/deposit_1
execute as @a[scores={deposit_10=1..}] run function anodemc-essential:triggers/deposit_10
execute as @a[scores={deposit_100=1..}] run function anodemc-essential:triggers/deposit_100
execute as @a[scores={deposit_all=1..}] run function anodemc-essential:triggers/deposit_all
execute as @a[scores={withdraw_1=1..}] run function anodemc-essential:triggers/withdraw_1
execute as @a[scores={withdraw_10=1..}] run function anodemc-essential:triggers/withdraw_10
execute as @a[scores={withdraw_100=1..}] run function anodemc-essential:triggers/withdraw_100
execute as @a[scores={withdraw_all=1..}] run function anodemc-essential:triggers/withdraw_all
execute as @a[scores={display_balance=1..}] run function anodemc-essential:triggers/display_balance

# variables
execute as @a[scores={give.amount=1..}] run function anodemc-essential:give/amount
scoreboard players add anodemc-essential time_tick 1
scoreboard players set anodemc-essential time_seconds_delta 0
execute if score anodemc-essential time_tick matches 20.. run scoreboard players add anodemc-essential time_seconds_delta 1
execute if score anodemc-essential time_tick matches 20.. run scoreboard players remove anodemc-essential time_tick 20

