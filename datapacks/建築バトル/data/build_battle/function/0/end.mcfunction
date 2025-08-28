tag @a[tag=player] add end
tag @a remove player
gamemode adventure @a[tag=end]
bossbar remove build_battle:time
scoreboard players set #timer time 12001
function build_battle:end/1 {x0:70, y0:-60, z0:40}