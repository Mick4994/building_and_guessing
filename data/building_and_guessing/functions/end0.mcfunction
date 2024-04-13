tag @a remove builded
tag @a remove building
scoreboard players set @a building_and_guessing_times 0
execute as @a run function building_and_guessing:judge_winner
execute as @r[tag=winner] run function building_and_guessing:win_settlement
scoreboard players set game building_and_guessing_gaming 2
bossbar set time_left players 00000
bossbar set show players @a
scoreboard players set time_left building_and_guessing_time_left 0
scoreboard players set ending building_and_guessing_delay 200
