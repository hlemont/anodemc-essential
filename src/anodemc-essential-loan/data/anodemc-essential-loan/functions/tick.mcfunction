# run on_join
execute as @a[tag=!anodemc-essential-loan.join] run function anodemc-essential-loan:on_join

# triggers
execute as @a[scores={loan.borrow_1=1..}] run function anodemc-essential-loan:triggers/borrow_1
execute as @a[scores={loan.borrow_10=1..}] run function anodemc-essential-loan:triggers/borrow_10
execute as @a[scores={loan.borrow_100=1..}] run function anodemc-essential-loan:triggers/borrow_100
execute as @a[scores={loan.repay_1=1..}] run function anodemc-essential-loan:triggers/repay_1
execute as @a[scores={loan.repay_10=1..}] run function anodemc-essential-loan:triggers/repay_10
execute as @a[scores={loan.repay_100=1..}] run function anodemc-essential-loan:triggers/repay_100
execute as @a[scores={loan.repay_all=1..}] run function anodemc-essential-loan:triggers/repay_all
execute as @a[scores={loan.display_current=1..}] run function anodemc-essential-loan:triggers/display_current
execute as @a[scores={loan.display_config=1..}] run function anodemc-essential-loan:triggers/display_config

# variables
execute unless score anodemc-essential time_seconds_delta matches 0 run function anodemc-essential-loan:time_second