scoreboard players set @a 0 0
execute as @a run scoreboard players operation @s basePoint = @s score
execute as @a run scoreboard players operation @s bonusPoint = @s 0

function stos:run