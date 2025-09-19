execute as @a if score @s carrot matches 1.. run function build_battle:complete/
scoreboard players set @a[scores={carrot=1..}] carrot 0

execute as @a if score @s warped matches 1.. run function build_battle:complete/0
scoreboard players set @a[scores={warped=1..}] warped 0

execute unless data storage build_battle:build {build:build} run tag @a remove complete
execute unless data storage build_battle:build {build:build} run tag @a remove extension
execute unless data storage build_battle:build {build:build} run scoreboard players reset $complete cnt
execute unless data storage build_battle:build {build:build} run scoreboard players reset $extension cnt

execute if score $complete cnt >= $number cnt run function build_battle:0/end
execute if score $extension cnt >= $number cnt2 run function build_battle:complete/1