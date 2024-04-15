scoreboard players add game building_and_guessing_guesscount 1
playsound minecraft:entity.experience_orb.pickup voice @a ~ ~ ~
playsound minecraft:entity.experience_orb.pickup voice @a[tag=building] ~ ~ ~
execute as @s if score game building_and_guessing_guesscount = 1 const run scoreboard players add @s building_and_guessing_score 3
execute as @s if score game building_and_guessing_guesscount = 1 const run scoreboard players add @a[tag=building] building_and_guessing_score 3
execute as @s if score game building_and_guessing_guesscount = 2 const run scoreboard players add @s building_and_guessing_score 2
execute as @s if score game building_and_guessing_guesscount >= 3 const run scoreboard players add @s building_and_guessing_score 1
tag @s add correct_guessed