tag @s[tag=building] add builded
tag @s[tag=building] remove building
tag @r[tag=!builded] add building
tag @a remove correct_guess
tag @a remove correct_guessed
execute as @a[tag=building] run function building_and_guessing:tp
scoreboard players operation time_left building_and_guessing_time_left = stored_time_max building_and_guessing_storage
execute if entity @a[tag=!builded] run title @a title [{"text":"现在是","color":"blue","bold":true},{"selector":"@a[tag=building]","color":"blue","bold":true},{"text":"建筑","color":"blue"}]
scoreboard players add @a building_and_guessing_times 1