execute if score @s loan.status matches 0 run tellraw @s {"text":"You don't have any owes."}
execute if score @s loan.status matches 1 run tellraw @s {"text":"Current status: In contract"}
execute if score @s loan.status matches 2 run tellraw @s {"text":"Current status: Missed deadline"}
execute unless score @s loan.status matches 0 if score @s loan.time_remaining matches 2.. run tellraw @s {"text":"","extra":["Repayment paid: ",{"score":{"objective":"loan.paid","name":"@s"}}," / ",{"score":{"objective":"loan.repayment","name":"@s"}},"\nTime remaining: ",{"score":{"objective":"loan.time_remaining","name":"@s"}}," seconds"]}
execute unless score @s loan.status matches 0 unless score @s loan.time_remaining matches 2.. run tellraw @s {"text":"","extra":["Repayment paid: ",{"score":{"objective":"loan.paid","name":"@s"}}," / ",{"score":{"objective":"loan.repayment","name":"@s"}},"\nTime remaining: ",{"score":{"objective":"loan.time_remaining","name":"@s"}}," second"]}