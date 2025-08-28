execute store result score $cnt cnt if data storage build_battle: game[]
execute if score $max theme < $cnt cnt run scoreboard players add $max theme 1
tellraw @s [{score:{name:"$max",objective:theme}},{text:"ラウンド"}]