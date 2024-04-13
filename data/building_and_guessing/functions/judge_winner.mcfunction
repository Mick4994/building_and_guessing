tag @s[tag=!targeted] add targeting
tag @s add winner
execute as @a[tag=!equal] if score @s building_and_guessing_score > @a[tag=targeting,limit=1] building_and_guessing_score run tag @a[tag=targeting,limit=1] remove winner
tag @s remove targeting

