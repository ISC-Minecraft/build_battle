tellraw @a {"text":"建築時間が延長されました","color":"green"}

bossbar set build_battle:time max 30000
scoreboard players operation #timer time += $12000 time
scoreboard players operation #timer mm += $10 mm

scoreboard players set $number cnt2 1000
clear @a warped_fungus_on_a_stick