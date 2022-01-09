tellraw @s {"text":"Your repayment has been completed!", "color":"yellow"}
scoreboard players operation anodemc-essential loan.to_be_paid = @s loan.paid
scoreboard players operation anodemc-essential loan.to_be_paid -= @s loan.repayment
execute if score anodemc-essential loan.to_be_paid matches 1.. run scoreboard players operation @s balance += anodemc-essential loan.to_be_paid
execute if score anodemc-essential loan.to_be_paid matches 1.. run tellraw @s {"text": "Over-paid amount has been automatically added to the balance.", "color":"gray", "italic":true}

# release if arrested
execute if score @s loan.status matches 2 run function anodemc-essential-loan:action/release

scoreboard players set @s loan.status 0
function anodemc-essential-loan:variables/reset