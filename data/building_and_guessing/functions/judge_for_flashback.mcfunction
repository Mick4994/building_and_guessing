tag @s add flashback
execute as @a[tag=!flashback] if score @s building_and_guessing_times <= @a[tag=flashback,limit=1] building_and_guessing_times run tag @a[tag=flashback] remove flashback

execute if entity @s[tag=flashback] run tag @s remove building
execute if entity @s[tag=flashback] run tag @s add builded
tag @s remove flashback