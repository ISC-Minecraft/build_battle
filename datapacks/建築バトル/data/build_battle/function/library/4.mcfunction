$data modify storage build_battle: game set from storage build_battle:theme theme.[$(random)]
$data remove storage build_battle:theme theme.[$(random)]

execute store result score $cnt cnt if data storage build_battle:theme theme[]
scoreboard players operation $cnt cnt -= $1 cnt
execute store result storage build_battle: cnt int 1 run scoreboard players get $cnt cnt