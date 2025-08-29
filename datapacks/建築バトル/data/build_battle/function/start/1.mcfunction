execute as @a[tag=player] at @s run function build_battle:start/5
execute as @e[type=marker,tag=area] at @s if entity @p[tag=player,dx=-47,dy=47,dz=-47] run tag @s add true
execute as @e[type=marker,tag=true] at @s store result score @s PID run scoreboard players get @p[tag=player] PID

function build_battle:start/2
bossbar set build_battle:time visible true
bossbar set build_battle:time players @a
scoreboard players set #timer time 12000

scoreboard players set #timer mm 9
scoreboard players set #timer ss 59
scoreboard players set #timer 20 20

function build_battle:start/4