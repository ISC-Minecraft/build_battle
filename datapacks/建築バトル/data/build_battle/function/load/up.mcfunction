execute store result score $cnt cnt if data storage build_battle:theme theme[]
execute if score $max game < $cnt cnt run scoreboard players add $max game 1
tellraw @s [{score:{name:"$max",objective:game}},{text:"テーマ"}]