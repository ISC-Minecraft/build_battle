function build_battle:load/tp
gamemode adventure @a[tag=!adomin]
title @a times 0 1000000 0

function build_battle:load/kill
function build_battle:load/marker

data modify storage build_battle:theme theme set value []
function build_battle:library/1

scoreboard players set #count time 1