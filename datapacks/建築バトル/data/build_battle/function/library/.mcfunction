#リセット
data modify storage build_battle:theme theme set value []
#読み込み
function build_battle:library/0
#要素数の保存
execute store result score $cnt cnt if data storage build_battle:theme theme[]
#読み込み完了通知
tellraw @a [{storage:"build_battle:",nbt:"lib"},{text:"から"},{score:{name:"$cnt",objective:cnt}},{text:"個のテーマを読み込みました"}]
#要素数を1引いて配列の番号とする
scoreboard players operation $cnt cnt -= $1 cnt
execute store result storage build_battle: cnt int 1 run scoreboard players get $cnt cnt