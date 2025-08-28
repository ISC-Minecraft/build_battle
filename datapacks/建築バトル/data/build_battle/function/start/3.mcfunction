execute store result score $area PID run scoreboard players get @s PID
execute as @a[tag=player] if score @s PID = $area PID at @s run tp @s @n[tag=marker]
scoreboard players reset $area PID