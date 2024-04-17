#请记住，玩家人数上限是11人
scoreboard objectives add building_and_guessing_time_left dummy
scoreboard objectives add building_and_guessing_storage dummy
scoreboard objectives add building_and_guessing_gaming dummy
scoreboard objectives add building_and_guessing_delay dummy
scoreboard objectives add building_and_guessing_times dummy
#创建分数计分板，只要你创建所有玩家应该都能看到
scoreboard objectives add building_and_guessing_score dummy {"text":"深圳技术大学_建筑猜猜乐:分数"}
scoreboard objectives setdisplay sidebar building_and_guessing_score
#大部分时间都有经过初始化 需要更改则直接scoreboard players set stored_time_max building_and_guessing_storage 最长时间数即可

scoreboard players set time_left building_and_guessing_time_left 20
scoreboard objectives add const dummy
scoreboard players set 0 const 0
scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 20 const 20
scoreboard players set 30 const 30
bossbar add time_left {"text":"剩余时间","color":"dark_red","bold":true}
bossbar set time_left color purple

bossbar set time_left style notched_12
bossbar add show {"text":"深圳技术大学Minecraft社——建筑猜猜乐","color":"white"}
bossbar set show color red