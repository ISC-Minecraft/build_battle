execute as @s[tag=complete] run tag @s add remove

execute as @s[tag=!complete] run tag @s add complete
execute as @s[tag=remove] run tag @s remove complete

execute store result score $complete cnt if entity @a[tag=complete]

tellraw @s[tag=complete] {"text":"建築を完了させました","color":"green"}
tellraw @s[tag=!complete] {"text":"建築完了を解除しました","color":"red"}

tag @s remove remove