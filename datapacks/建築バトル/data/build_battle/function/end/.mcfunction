execute if score #end time matches 1.. run scoreboard players add #end time 1

execute if score #end time matches 2 run title @a title {"text":"終了！！","color":"blue"}
execute if score #end time matches 16 run title @a clear
execute if score #end time matches 22 run title @a title {"text":"投票まで","color":"blue"}

execute if score #end time matches 22 run title @a subtitle {"text":"3","color":"red"}
execute if score #end time matches 42 run title @a subtitle {"text":"2","color":"red"}
execute if score #end time matches 62 run title @a subtitle {"text":"1","color":"red"}
execute if score #end time matches 82 run title @a subtitle {"text":"スタート！！","color":"red"}

execute if score #end time matches 90 run title @a clear

execute if score #end time matches 90 run function build_battle:0/vote
execute if score #end time matches 90.. run scoreboard players set #end time 0
