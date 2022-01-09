# enable triggers
scoreboard players enable @s loan.borrow_1
scoreboard players enable @s loan.borrow_10
scoreboard players enable @s loan.borrow_100
scoreboard players enable @s loan.repay_1
scoreboard players enable @s loan.repay_10
scoreboard players enable @s loan.repay_100
scoreboard players enable @s loan.repay_all
scoreboard players enable @s loan.display_current
scoreboard players enable @s loan.display_config


# variable
scoreboard players set @s loan.status 0
scoreboard players set @s loan.principal 0
scoreboard players set @s loan.repayment 0
scoreboard players set @s loan.paid 0
scoreboard players set @s loan.to_be_paid 0
scoreboard players set @s loan.time_remaining 0
scoreboard players set @s loan.arrest 0
scoreboard players set @s loan.release 0

tag @s add anodemc-essential-loan.join