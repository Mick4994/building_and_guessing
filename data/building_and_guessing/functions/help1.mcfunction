tellraw @s {"text":"end0和end1都是结束函数，用于结束游戏,非特殊情况下不要乱调用end1"}
tellraw @s {"text":"help系列函数即为该函数,用于调查函数作用"}
tellraw @s {"text":"load函数用于初始化函数"}
tellraw @s {"text":"judge_for_flashback函数用于检测闪退的玩家"}
tellraw @s {"text":"judge_winner(可能会采用)用于检测赢家"}
tellraw @s {"text":"player_devicing函数用于玩家编码化"}
tellraw @s {"text":"select函数用于选取还没有建造(不包括游戏中途闪退的玩家)"}
tellraw @s {"text":"start函数用于开启游戏"}
tellraw @s {"text":"text_for为主函数，用于检测游戏条件，结算等！！！！"}
tellraw @s {"text":"tp函数用于将所有玩家传送到建筑者所拥有的建筑区域上"}
tellraw @s {"text":"trapping函数用于防止玩家逃逸到其他建筑区域处"}
tellraw @s {"text":"win_settlement函数用于将所有玩家传送到胜利玩家所在区块处,其中调用了tp函数"}
tellraw @s {"text":"correct_guess函数用于反馈猜对玩家,正常情况下不要调用,直接给tag @a[猜对的玩家] add correct_guess即可"}
tag @s remove help
scoreboard players set text building_and_guessing_gaming 0