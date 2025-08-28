function build_battle:load/tp
gamemode adventure @a[tag=vote_end]
tag @a remove vote_end
bossbar remove build_battle:vote
data remove storage build_battle:build build
scoreboard players set #vote time 6001