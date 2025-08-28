# 1. 残り時間を1減らす
scoreboard players remove #timer time 1

# 2. ボスバーの値を更新
execute store result bossbar build_battle:time value run scoreboard players get #timer time

# 残り時間を分と秒に分割してストレージに格納
scoreboard players remove #timer 20 1
execute if score #timer 20 matches ..0 run scoreboard players remove #timer ss 1
execute if score #timer ss matches ..-1 run scoreboard players remove #timer mm 1
execute if score #timer ss matches ..-1 run scoreboard players set #timer ss 59
execute if score #timer 20 matches ..0 run scoreboard players set #timer 20 20

# ボスバーの表示名を更新
bossbar set build_battle:time name [{"score":{"name":"#timer","objective":"mm"},"color":"white"},{"text":"分","color":"white"},{"score":{"name":"#timer","objective":"ss"},"color":"white"},{"text":"秒","color":"white"}]

# 4. 残り時間0でイベント終了
execute if score #timer time matches 0 run function build_battle:0/end