tp @s @n[type=marker,tag=marker,tag=!done]
execute at @s run tag @n[type=marker,tag=marker] add done
execute at @s run tag @n[type=marker,tag=marker] add center
execute as @n[type=marker,tag=marker,tag=center] at @s store result score @s PID run scoreboard players get @p[tag=player] PID
execute at @s run tag @n[type=marker,tag=marker,tag=center] remove center