execute store result score $area PID run scoreboard players get @s PID
execute as @a[tag=player] if score @s PID = $area PID at @s run tag @s add tp
execute as @e[type=marker,tag=done] if score @s PID = $area PID at @s run tp @p[tag=tp] @s
tag @a[tag=tp] remove tp
scoreboard players reset $area PID