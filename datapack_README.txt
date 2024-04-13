服务端需要在执行building_and_guessing:end0执行前给building_and_guessing_score计分板分数最高的玩家一个winner的tag
服务端需要在给每局答对的人一个correct_guess的tag并让其在之后无法发言(分数规则再议，目前用hyp的困难分数给定规则)
服务端需要设置权限，让大多数人无法用tag @s add op
数据包用到的tag builded(已建筑完成的玩家) building(正在建筑的玩家)
1 2 3 4 5 6 7 8 9 10 11(将玩家数字编码) winner(胜利者) targeted(废案的中间量，可不管)  op(让玩家休闲时刻可随时调整游戏模式) correct_guess(猜中玩家)
correct_guessed(猜完并执行对应程序的玩家)
重要bossbar time_left用于显示剩余时间
重要计分板及虚拟实体
building_and_guessing_time_left用于记录和存储时间
building_and_guessing_storage用于存储最大时间（若需要改最大时间,可用指令scoreboard players set stored_time_max building_and_guessing_storage+时间）
building_and_guessing_gaming 中的game虚拟实体用于记录游戏状态
building_and_guessing_delay 是指令中间需要的计分板，可不管。
building_and_guessing_guesscount 中的game虚拟实体用于记录有多少人正确猜中，从而方便控制其他数据
const 用于调用整数，可不管，若需要其他整数请联系@cishi233已调用0 1 2 3 20 30