scoreboard players operation anodemc-essential loan.to_be_paid = @s balance
execute if score anodemc-essential loan.to_be_paid > @s loan.to_be_paid run scoreboard players operation anodemc-essential loan.to_be_paid = @s loan.to_be_paid
scoreboard players operation @s balance -= anodemc-essential loan.to_be_paid

tellraw @s {"text":"\nAutomatically withdrawing from your balance...", "italic":true, "color":"gray"}

function anodemc-essential-loan:action/repay

# arrest
execute if score @s loan.to_be_paid matches 1.. run scoreboard players set @s loan.status 2
execute if score @s loan.to_be_paid matches 1.. run function anodemc-essential-loan:variables/update
execute if score @s loan.to_be_paid matches 1.. run function anodemc-essential-loan:util/save_position
execute if score @s loan.to_be_paid matches 1.. run tellraw @s {"text":"You have exceeded the repayment deadline!", "color": "red"}
execute if score @s loan.to_be_paid matches 1.. run scoreboard players set @s loan.arrest 1