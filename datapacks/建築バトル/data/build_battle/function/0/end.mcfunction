tag @a[tag=player] add end
tag @a remove regular
tag @a remove player

gamemode adventure @a[tag=end]
data modify storage build_battle:build build set value end

bossbar remove build_battle:time
scoreboard players set #timer time 30001

function build_battle:end/1 {x0:70, y0:-60, z0:40}