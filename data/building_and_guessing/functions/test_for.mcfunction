#时间流逝
execute if score game building_and_guessing_gaming = 1 const if score time_left building_and_guessing_time_left > 0 const run scoreboard players remove time_left building_and_guessing_time_left 1
execute if score game building_and_guessing_gaming = 2 const if score ending building_and_guessing_delay > 0 const run scoreboard players remove ending building_and_guessing_delay 1
execute if score help building_and_guessing_delay > 0 const run scoreboard players remove help building_and_guessing_delay 1
execute if score help building_and_guessing_delay = 0 const as @a[tag=help] run function building_and_guessing:help1
#显示时间条
execute store result bossbar time_left value run scoreboard players get time_left building_and_guessing_time_left
#轮换
execute if score game building_and_guessing_gaming = 1 const if score time_left building_and_guessing_time_left <= 0 const as @a[tag=building] run function building_and_guessing:select
execute if score game building_and_guessing_gaming = 1 const unless entity @a[tag=building] run function building_and_guessing:select
#猜中音效
execute as @a[tag=correct_guess,tag=!correct_guessed] at @s run function building_and_guessing:correct_guess

#显示建筑玩家,隐藏剩余玩家
execute if score game building_and_guessing_gaming = 1 const run gamemode spectator @a[tag=!building]
execute if score game building_and_guessing_gaming = 1 const run gamemode creative @a[tag=building]
#生成的实体NoAI化
execute as @e[type=!player] run data merge entity @s {NoAI:1b}


#结束1 传送玩家到分数最高的玩家建并播放音效
execute if score game building_and_guessing_gaming = 1 const unless entity @a[tag=!builded] run function building_and_guessing:end0
execute if score game building_and_guessing_gaming = 2 const run scoreboard players operation playsound building_and_guessing_delay = ending building_and_guessing_delay
scoreboard players operation playsound building_and_guessing_delay %= 30 const
execute if score playsound building_and_guessing_delay = 0 const at @a run summon firework_rocket ~ ~ ~ {LifeTime:10,Life:0,FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:1b,Trail:1b,Colors:[I;671996655]}]}}}}
execute if score game building_and_guessing_gaming = 2 const if score ending building_and_guessing_delay = 0 const run function building_and_guessing:end1
#初始化,包括bossbar显示等
execute if score game building_and_guessing_gaming = 0 const run gamemode adventure @a[tag=!op]
execute if score game building_and_guessing_gaming = 0 const
execute as @e[type=tnt] run data merge entity @s {fuse:5}
execute unless score game building_and_guessing_gaming = 2 const run scoreboard players set ending building_and_guessing_delay 99
execute unless score game building_and_guessing_gaming = 2 const run scoreboard players set playsound building_and_guessing_delay 99
spawnpoint @a 15 22 16 0.0
#不让玩家随意走动
execute as @a[tag=building,limit=1] run function building_and_guessing:trapping
#维持天气
weather clear