gamemode creative @a[tag=player]

item replace entity @a[tag=player] hotbar.7 with carrot_on_a_stick[custom_name={text:"建築完了"},lore=["建築が完了したらクリックしてください。"]]
item replace entity @a[tag=player] hotbar.8 with warped_fungus_on_a_stick[custom_name={text:"建築時間延長"},lore=["建築時間を延長したかったらクリックしてください。"]]

data modify storage build_battle:build build set value build

execute store result score $number cnt if entity @a[tag=player]
execute store result score $number cnt2 if entity @a[tag=player]
scoreboard players operation $number cnt2 %= $2 cnt2