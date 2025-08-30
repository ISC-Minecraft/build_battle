execute if score #vote time matches ..6000 run scoreboard players remove #vote time 1

execute store result bossbar build_battle:vote value run scoreboard players get #vote time

scoreboard players remove #vote 20 1
execute if score #vote 20 matches ..0 run scoreboard players remove #vote ss 1
execute if score #vote ss matches ..-1 run scoreboard players remove #vote mm 1
execute if score #vote ss matches ..-1 run scoreboard players set #vote ss 59
execute if score #vote 20 matches ..0 run scoreboard players set #vote 20 20

execute if score #vote time matches 5999 run tellraw @a [{"text":"良いなと思った"},{"text":"自分以外の建築","color":"yellow"},{text:"に投票してください！！"}]
execute if score #vote time matches 5999 run tellraw @a [{"text":"残り時間が0になった時に"},{"text":"待機しているエリアにある建築","color":"gold"},{text:"に自動で投票されます！！"}]
execute if score #vote time matches 5999 run tellraw @a [{"text":"一度投票したら"},{"text":"変更できません！！","color":"red"},{text:"注意してください！！"}]

execute if score #vote time matches 4800 run tellraw @a [{"text":"良いなと思った"},{"text":"自分以外の建築","color":"yellow"},{text:"に投票してください！！"}]
execute if score #vote time matches 4800 run tellraw @a [{"text":"残り時間が0になった時に"},{"text":"待機しているエリアにある建築","color":"gold"},{text:"に自動で投票されます！！"}]
execute if score #vote time matches 4800 run tellraw @a [{"text":"一度投票したら"},{"text":"変更できません！！","color":"red"},{text:"注意してください！！"}]

execute if score #vote time matches 3600 run tellraw @a [{"text":"良いなと思った"},{"text":"自分以外の建築","color":"yellow"},{text:"に投票してください！！"}]
execute if score #vote time matches 3600 run tellraw @a [{"text":"残り時間が0になった時に"},{"text":"待機しているエリアにある建築","color":"gold"},{text:"に自動で投票されます！！"}]
execute if score #vote time matches 3600 run tellraw @a [{"text":"一度投票したら"},{"text":"変更できません！！","color":"red"},{text:"注意してください！！"}]

execute if score #vote time matches 2400 run tellraw @a [{"text":"良いなと思った"},{"text":"自分以外の建築","color":"yellow"},{text:"に投票してください！！"}]
execute if score #vote time matches 2400 run tellraw @a [{"text":"残り時間が0になった時に"},{"text":"待機しているエリアにある建築","color":"gold"},{text:"に自動で投票されます！！"}]
execute if score #vote time matches 2400 run tellraw @a [{"text":"一度投票したら"},{"text":"変更できません！！","color":"red"},{text:"注意してください！！"}]

execute if score #vote time matches 1200 run tellraw @a [{"text":"良いなと思った"},{"text":"自分以外の建築","color":"yellow"},{text:"に投票してください！！"}]
execute if score #vote time matches 1200 run tellraw @a [{"text":"残り時間が0になった時に"},{"text":"待機しているエリアにある建築","color":"gold"},{text:"に自動で投票されます！！"}]
execute if score #vote time matches 1200 run tellraw @a [{"text":"一度投票したら"},{"text":"変更できません！！","color":"red"},{text:"注意してください！！"}]

execute if score #vote time matches 600 run tellraw @a [{"text":"良いなと思った"},{"text":"自分以外の建築","color":"yellow"},{text:"に投票してください！！"}]
execute if score #vote time matches 600 run tellraw @a [{"text":"残り時間が0になった時に"},{"text":"待機しているエリアにある建築","color":"gold"},{text:"に自動で投票されます！！"}]
execute if score #vote time matches 600 run tellraw @a [{"text":"一度投票したら"},{"text":"変更できません！！","color":"red"},{text:"注意してください！！"}]

execute if score #vote time matches 220 run title @a title {text:"10"}
execute if score #vote time matches 200 run title @a title {text:"9"}
execute if score #vote time matches 180 run title @a title {text:"8"}
execute if score #vote time matches 160 run title @a title {text:"7"}
execute if score #vote time matches 140 run title @a title {text:"6"}
execute if score #vote time matches 120 run title @a title {text:"5"}
execute if score #vote time matches 100 run title @a title {text:"4"}
execute if score #vote time matches 80 run title @a title {text:"3"}
execute if score #vote time matches 60 run title @a title {text:"2"}
execute if score #vote time matches 40 run title @a title {text:"1"}
execute if score #vote time matches 20 run title @a clear

bossbar set build_battle:vote name [{"score":{"name":"#vote","objective":"mm"},"color":"white"},{"text":"分","color":"white"},{"score":{"name":"#vote","objective":"ss"},"color":"white"},{"text":"秒","color":"white"}]

execute if score #vote time matches ..0 run function build_battle:vote_end/1