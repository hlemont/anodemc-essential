# [if arrested] loan.repayment = (100 + loan.INTEREST + loan.INTEREST_PENALTY) * loan.principal / 100
# [otherwise] loan.repayment = (100 + loan.INTEREST) * loan.principal  / 100
# loan.to_be_paid = loan.repayment - loan.paid.

# update loan.repayment
scoreboard players operation @s loan.repayment = anodemc-essential HUNDRED
scoreboard players operation @s loan.repayment += anodemc-essential loan.INTEREST
execute if score @s loan.status matches 2 run scoreboard players operation @s loan.repayment += anodemc-essential loan.INTEREST_PENALTY
scoreboard players operation @s loan.repayment *= @s loan.principal
scoreboard players operation @s loan.repayment /= anodemc-essential HUNDRED

# update loan.to_be_paid
scoreboard players operation @s loan.to_be_paid = @s loan.repayment
scoreboard players operation @s loan.to_be_paid -= @s loan.paid