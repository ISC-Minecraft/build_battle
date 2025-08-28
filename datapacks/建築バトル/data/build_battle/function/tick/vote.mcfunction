execute if score #vote time matches ..6000 run scoreboard players remove #vote time 1

execute store result bossbar build_battle:vote value run scoreboard players get #vote time

scoreboard players remove #vote 20 1
execute if score #vote 20 matches ..0 run scoreboard players remove #vote ss 1
execute if score #vote ss matches ..-1 run scoreboard players remove #vote mm 1
execute if score #vote ss matches ..-1 run scoreboard players set #vote ss 59
execute if score #vote 20 matches ..0 run scoreboard players set #vote 20 20

bossbar set build_battle:vote name [{"score":{"name":"#vote","objective":"mm"},"color":"white"},{"text":"分","color":"white"},{"score":{"name":"#vote","objective":"ss"},"color":"white"},{"text":"秒","color":"white"}]

execute if score #vote time matches ..0 run function build_battle:vote_end/1