tellraw @s ["Current balance is: ", {"score": {"name":"@s", "objective":"balance"}}]
scoreboard players set @s display_balance 0
scoreboard players enable @s display_balance