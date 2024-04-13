function building_and_guessing:player_devicing
scoreboard players set game building_and_guessing_gaming 1
scoreboard players set @a building_and_guessing_score 0
scoreboard players set @a building_and_guessing_times 0
tag @a remove builded
tag @a remove building
function building_and_guessing:select
bossbar set show players 000
bossbar set time_left players @a