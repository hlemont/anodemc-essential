scoreboard players operation @s loan.time_remaining -= anodemc-essential time_seconds_delta
execute if score @s loan.time_remaining <= anodemc-essential loan.TIME_TO_ALERT run function anodemc-essential-loan:util/countdown_due
execute if score @s loan.time_remaining matches ..0 run function anodemc-essential-loan:action/expire