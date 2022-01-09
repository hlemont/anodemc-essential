# anodemc-essential->loan.principal: amount to borrow
scoreboard players operation @s loan.principal += anodemc-essential loan.principal
scoreboard players operation @s give.amount += anodemc-essential loan.principal
function anodemc-essential-loan:variables/update

execute if score @s loan.status matches 0 run function anodemc-essential-loan:action/contract

function anodemc-essential-loan:util/print_header
function anodemc-essential-loan:util/print_borrow
function anodemc-essential-loan:util/print_current

