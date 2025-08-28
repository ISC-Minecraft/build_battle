execute if score #count time matches 1.. run scoreboard players add #count time 1

execute if score #count time matches 2 run title @a title {"text":"お題:","color":"blue"}

execute if score #count time matches 2 run title @a subtitle {"text":"5","color":"red"}
execute if score #count time matches 22 run title @a subtitle {"text":"4","color":"red"}
execute if score #count time matches 42 run title @a subtitle {"text":"3","color":"red"}
execute if score #count time matches 62 run title @a subtitle {"text":"2","color":"red"}
execute if score #count time matches 82 run title @a subtitle {"text":"1","color":"red"}
execute if score #count time matches 102 run title @a subtitle {"text":"スタート！！","color":"red"}

execute if score #count time matches 110 run title @a clear

execute if score #count time matches 110 run function build_battle:start/0
execute if score #count time matches 110.. run scoreboard players set #count time 0