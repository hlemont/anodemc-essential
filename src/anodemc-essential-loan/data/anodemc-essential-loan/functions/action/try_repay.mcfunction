# anodemc-essential->loan.to_be_paid: amount to repay
# if repayment is not left
execute if score @s loan.status matches 0 run tellraw @s {"text":"You don't have any owes.", "color":"red"}

# if repayment left
execute unless score @s loan.status matches 0 if score anodemc-essential loan.to_be_paid > @s loan.to_be_paid run scoreboard players operation anodemc-essential loan.to_be_paid = @s loan.to_be_paid

execute unless score @s loan.status matches 0 store result score anodemc-essential loan.paid run clear @s minecraft:diamond
execute unless score @s loan.status matches 0 if score anodemc-essential loan.to_be_paid > anodemc-essential loan.paid run scoreboard players operation anodemc-essential loan.to_be_paid = anodemc-essential loan.paid
execute unless score @s loan.status matches 0 run scoreboard players operation anodemc-essential loan.paid -= anodemc-essential loan.to_be_paid
execute unless score @s loan.status matches 0 run scoreboard players operation @s give.amount += anodemc-essential loan.paid

execute unless score @s loan.status matches 0 if score anodemc-essential loan.to_be_paid matches 1.. run function anodemc-essential-loan:action/repay
