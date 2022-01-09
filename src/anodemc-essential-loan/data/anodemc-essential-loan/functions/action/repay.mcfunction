# anodemc-essential->loan.to_be_paid: amount to repay
scoreboard players operation @s loan.paid += anodemc-essential loan.to_be_paid
function anodemc-essential-loan:variables/update

function anodemc-essential-loan:util/print_header
function anodemc-essential-loan:util/print_repay
function anodemc-essential-loan:util/print_current

execute if score @s loan.to_be_paid matches ..0 unless score @s loan.status matches 0 run function anodemc-essential-loan:action/complete
