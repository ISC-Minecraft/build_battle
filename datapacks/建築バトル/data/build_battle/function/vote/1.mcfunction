gamemode spectator @a[tag=vote]

function build_battle:vote/2
bossbar set build_battle:vote visible true
bossbar set build_battle:vote players @a
scoreboard players set #vote time 6000

scoreboard players set #vote mm 4
scoreboard players set #vote ss 59
scoreboard players set #vote 20 20

function build_battle:vote/3