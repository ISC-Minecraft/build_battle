tag @s add at
execute store result score $builder PID run scoreboard players get @s PID
execute as @a if score @s PID = $builder PID at @s run tag @s add Builder

execute store result score @s score if entity @a[tag=!Builder,tag=vote,dx=-48,dy=44,dz=-48]
execute store result score @a[tag=Builder] score run scoreboard players get @s score
execute as @s at @s run tag @a[tag=!Builder,tag=vote,dx=-48,dy=44,dz=-48] add vote_end

tag @a[tag=vote_end] remove vote
tag @a[tag=vote_end] remove Builder
tag @e remove destination