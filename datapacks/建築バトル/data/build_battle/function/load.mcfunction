gamerule doDaylightCycle false
gamerule keepInventory true
gamerule doWeatherCycle false
gamerule tntExplodes false
gamerule doImmediateRespawn true

defaultgamemode adventure
time set day
gamemode adventure @a
gamemode creative @a[tag=adomin]
clear @a writable_book
function build_battle:load/book

forceload remove all
forceload add 32 -241
forceload add -32 -241
forceload add -96 -241
forceload add -160 -241

function build_battle:load/book
function build_battle:load/admin_
tag @a remove player
tag @a remove end
tag @a remove vote
tag @a remove vote_end
tag @a remove Builder

advancement revoke @a only build_battle:inventory

scoreboard objectives remove score

scoreboard objectives add cnt dummy
scoreboard players set $1 cnt 1
scoreboard objectives add theme dummy
scoreboard objectives add time dummy
scoreboard objectives add mm dummy
scoreboard objectives add ss dummy
scoreboard objectives add 20 dummy
scoreboard objectives add PID dummy
scoreboard objectives add GlobalID dummy
scoreboard objectives add game dummy
scoreboard objectives add score dummy "得点"
scoreboard objectives add 500 dummy
scoreboard players set $500 500 500

scoreboard objectives setdisplay sidebar score

function build_battle:start/2
function build_battle:vote/2

data modify storage build_battle:time time set from storage build_battle:time {mm:10,ss:59}
data modify storage build_battle:vote time set from storage build_battle:vote {mm:5,ss:59}

function build_battle:library/6 {lib:0}

function build_battle:load/kill
function build_battle:load/marker

say "リローデッド！"