scoreboard objectives remove building_and_guessing_score
function building_and_guessing:load

$scoreboard players set stored_time_max building_and_guessing_storage $(game_time)
execute store result bossbar time_left max run scoreboard players get stored_time_max building_and_guessing_storage

function building_and_guessing:player_devicing
scoreboard players set game building_and_guessing_gaming 1
scoreboard players set @a building_and_guessing_score 0
scoreboard players set @a building_and_guessing_times 0
tag @a remove builded
tag @a remove building
function building_and_guessing:select
bossbar set show players 000
bossbar set time_left players @a