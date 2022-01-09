# anodemc-essential->loan.principal: amount to borrow
# if can borrow
execute unless score @s loan.status matches 2 if score anodemc-essential loan.principal matches 1.. run function anodemc-essential-loan:action/borrow

# if cannot borrow, print reason why
execute unless score @s loan.status matches 2 if score anodemc-essential loan.principal matches ..0 run tellraw @s {"text":"You have reached the loan limit!", "color":"red"}
execute if score @s loan.status matches 2 run tellraw @s {"text":"You cannot borrow since you're a debtor!", "color":"red"}