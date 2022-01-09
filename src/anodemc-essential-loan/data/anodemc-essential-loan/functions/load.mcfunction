# constants
scoreboard objectives add HUNDRED dummy
scoreboard players set anodemc-essential HUNDRED 100

# config
# loan.INTEREST[0..]: a percentage of interest to be charged immediately.
# loan.INTEREST_PENALTY[0..]: a percentage of interest to be charged overdue.
# loan.LIMIT[0..]: a maximum amount of loan allowed in principal.
# loan.PERIOD[0..] a time limit to pay all loan in seconds.
# loan.TIME_TO_ALERT[0..] a time to start alerting repayment due.
scoreboard objectives add loan.INTEREST dummy
scoreboard objectives add loan.INTEREST_PENALTY dummy 
scoreboard objectives add loan.LIMIT dummy
scoreboard objectives add loan.PERIOD dummy
scoreboard objectives add loan.TIME_TO_ALERT dummy
execute unless score anodemc-essential loan.INTEREST = anodemc-essential loan.INTEREST run scoreboard players set anodemc-essential loan.INTEREST 10
execute unless score anodemc-essential loan.INTEREST_PENALTY = anodemc-essential loan.INTEREST_PENALTY run scoreboard players set anodemc-essential loan.INTEREST_PENALTY 10
execute unless score anodemc-essential loan.LIMIT = anodemc-essential loan.LIMIT run scoreboard players set anodemc-essential loan.LIMIT 500
execute unless score anodemc-essential loan.PERIOD = anodemc-essential loan.PERIOD run scoreboard players set anodemc-essential loan.PERIOD 3600
execute unless score anodemc-essential loan.TIME_TO_ALERT = anodemc-essential loan.TIME_TO_ALERT run scoreboard players set anodemc-essential loan.TIME_TO_ALERT 120

# variables
# loan.status[0-2]: 0 = not owing, 1 = owing, 2 = overdue
# loan.principal: a principal of loan
# loan.repayment: a total amount to be paid to complete repayment, derived by loan.principal * loan.INTEREST / 100 or loan.principal * (loan.INTEREST + loan.INTEREST_PENALTY) / 100 if arrested.
# loan.paid: an amount already paid
# loan.to_be_paid: an amount to be paid additionally to complete repayment, derived by loan.repayment - loan.paid.
# loan.time_remaining: a remaining time for repayment.
scoreboard objectives add loan.status dummy
scoreboard objectives add loan.principal dummy
scoreboard objectives add loan.repayment dummy
scoreboard objectives add loan.paid dummy
scoreboard objectives add loan.to_be_paid dummy
scoreboard objectives add loan.time_remaining dummy

scoreboard objectives add loan.arrest dummy
scoreboard objectives add loan.release dummy

# triggers
scoreboard objectives add loan.borrow_1 trigger
scoreboard objectives add loan.borrow_10 trigger
scoreboard objectives add loan.borrow_100 trigger
scoreboard objectives add loan.repay_1 trigger
scoreboard objectives add loan.repay_10 trigger
scoreboard objectives add loan.repay_100 trigger
scoreboard objectives add loan.repay_all trigger
scoreboard objectives add loan.display_current trigger
scoreboard objectives add loan.display_config trigger

# teams
team add debtor {"text":"Debtor", "color":"red"}
team modify debtor color red