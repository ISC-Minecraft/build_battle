$data modify storage build_battle: lib set value $(lib)
function build_battle:library/ with storage build_battle:
execute store result score $max game run data get storage build_battle: default
tellraw @a [{text:"テーマ数が"},{score:{name:"$max",objective:game}},{text:"に設定されました"}]