execute if data storage build_battle:build {build:build} run tag @a[tag=!player] add player
execute unless data storage build_battle:build {build:build} run tag @a[tag=player] remove player
execute unless data storage build_battle:build {build:build} run tag @a[tag=regular] remove regular
gamemode creative @a[tag=player,tag=regular,gamemode=!creative]
gamemode spectator @a[tag=player,tag=!regular,gamemode=!spectator] 

execute if data storage build_battle:build {build:end} run tag @a[tag=!end] add end
execute unless data storage build_battle:build {build:end} run tag @a[tag=end] remove end
gamemode adventure @a[tag=end,gamemode=!adventure]

execute if data storage build_battle:build {build:vote} run tag @a[tag=!vote,tag=!vote_end] add vote
execute unless data storage build_battle:build {build:vote} run tag @a[tag=vote] remove vote
gamemode spectator @a[tag=vote,gamemode=!spectator]
gamemode spectator @a[tag=vote_end,gamemode=!spectator]

execute unless data storage build_battle:build build run gamemode adventure @a[gamemode=!adventure,name=!yuto33]