execute as @e[tag=true] at @s if entity @a[tag=!Builder,tag=vote,dx=-48,dy=44,dz=-48] at @s run function build_battle:vote_end/2

execute as @a[tag=Builder] if score @s PID = @n[tag=at] PID at @s run tag @s remove Builder
tag @e remove at

tellraw @a[tag=vote,tag=!Builder] {text:"そこは投票無効エリアです",color:red}
tellraw @a[tag=vote,tag=Builder] {text:"自分の建築には投票できません！！",color:red}
execute as @e[tag=true] at @s if entity @a[tag=Builder,tag=vote,dx=-48,dy=44,dz=-48] run tag @a[tag=Builder,tag=vote,dx=-48,dy=44,dz=-48] add false
tag @a[tag=!false] remove Builder
tag @a[tag=false] remove false

execute unless entity @a[tag=vote] run execute if entity @a[tag=vote_end] run function build_battle:0/end_vote