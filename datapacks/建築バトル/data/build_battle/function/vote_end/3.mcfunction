execute store result score $builder PID run scoreboard players get @s PID
execute as @a if score @s PID = $builder PID at @s run tag @s add Builder
execute as @a if score @s PID = $builder PID at @s run tag @s add at

execute store result score @s 500 if entity @a[tag=!Builder,tag=vote,dx=-48,dy=44,dz=-48]
execute store result score $tmp score run scoreboard players get @s 500
scoreboard players operation $tmp score *= $500 500
execute if score @s 500 matches 1.. run scoreboard players operation @a[tag=at] score += $tmp score
execute as @s at @s run tag @a[tag=!Builder,tag=vote,dx=-48,dy=44,dz=-48] add vote_end
scoreboard players reset $tmp score 

tag @a remove at
tag @a[tag=vote_end] remove vote
tag @a[tag=vote_end] remove Builder
tag @e remove destination