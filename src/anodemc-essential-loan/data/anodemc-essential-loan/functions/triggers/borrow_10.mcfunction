# get max of the amount the player can borrow
scoreboard players operation anodemc-essential loan.principal = anodemc-essential loan.LIMIT
scoreboard players operation anodemc-essential loan.principal -= @s loan.principal 
execute if score anodemc-essential loan.principal matches 10.. run scoreboard players set anodemc-essential loan.principal 10

function anodemc-essential-loan:action/try_borrow

scoreboard players set @s loan.borrow_10 0
scoreboard players enable @s loan.borrow_10