$data modify storage build_battle:theme theme set from storage build_battle: game.[$(random)]
$data remove storage build_battle: game.[$(random)]

execute store result score $cnt cnt if data storage build_battle: game[]
scoreboard players operation $cnt cnt -= $1 cnt
execute store result storage build_battle: cnt int 1 run scoreboard players get $cnt cnt