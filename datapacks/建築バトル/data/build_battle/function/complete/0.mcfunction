execute as @s[tag=extension] run tag @s add remove

execute as @s[tag=!extension] run tag @s add extension
execute as @s[tag=remove] run tag @s remove extension

execute store result score $extension cnt if entity @a[tag=extension]

tellraw @s[tag=extension] {"text":"建築時間の延長を希望しました","color":"green"}
tellraw @s[tag=!extension] {"text":"建築時間延長の希望を解除しました","color":"red"}

tag @s remove remove