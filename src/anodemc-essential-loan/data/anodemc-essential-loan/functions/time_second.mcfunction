execute as @a run function anodemc-essential-loan:variables/update
execute as @a[scores={loan.status=1..,loan.to_be_paid=..0}] run function anodemc-essential-loan:action/complete
execute as @a[scores={loan.status=1}] run function anodemc-essential-loan:repeating/owing

execute as @a[scores={loan.status=2}] run team join debtor
execute as @a unless score @s loan.status matches 2 run team leave @s